<?php
$sql = '';
$nameTable = '';
if (isset($_GET['id']) && $_GET['id'] != NULL) {
    $id = $_GET['id'];
    $name = $_GET['name'];
    if (isset($_GET["table"])&& $_GET['table'] != NULL) {
        $table = $_GET["table"];
        $sql = "delete form $table where IDUser ='$id'";
    } else {
        $id_table = substr($_GET['id'], 0, 1);
        switch ($id_table) {
            case "1":
                $table = 'tbgraphicslist';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "2":
                $table = 'tbradiatorslist';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "3":
                $table = 'tbcpulist';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "4":
                $table = 'tblaptoplist';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "5":
                $table = 'tbspeaklist';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "6":
                $table = '';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "7":
                $table = 'tbpccaselist';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "8":
                $table = '';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "9":
                $table = 'tbramlist';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            case "10":
                $talbe = '';
                $sql = "delete form $table where idProduct ='$id'";
                break;
            default: break;
        }
    }
}

$res = mysqli_query($link, $sql);
?>
<div class="delete-body">
    <div class="delete-top-bar padding-0">
        <div class="banner-top top-content-delete shadow">
            <div class="card-body">
                <div class=" no-gutters align-content-center-delete">
                    <div class="card-font">
                        <h1>Bạn thật sự muốn xóa:</h1>
                        <h2><?php echo $name; ?></h2>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <form action="run_delete.php">
                <input type="hidden" name="hidden_id" value="<?php echo $id; ?>" />
                <input type="hidden" name="hidden_tableName" value="<?php echo $table; ?>" />
                <button class="btn btn-danger btnSubmit_delete">Xác nhận xóa</button>
            </form>

        </div>


    </div>
</div>