<?php
if (!isset($_GET['ref'])) {
    $ref = "";
} else {
    $ref = $_GET['ref'];
}
$tableName = "";
switch ($ref) {
//    ref laptop
    case "laptop":
        $tableName = "tblaptoplist";
        break;
    case "laptopAsus":
        $tableName = "tblaptoplist";

        break;
    case "laptopAcer":
        $tableName = "tblaptoplist";

        break;
    case "laptopDell":
        $tableName = "tblaptoplist";

        break;
    case "laptopHP":
        $tableName = "tblaptoplist";

        break;
    case "laptopLenovo":
        $tableName = "tblaptoplist";

        break;
    case "laptop10":
        $tableName = "tblaptoplist";

        break;
    case "laptop1020":
        $tableName = "tblaptoplist";

        break;
    case "laptop2040":
        $tableName = "tblaptoplist";

        break;
    case "laptop40h":
        $tableName = "tblaptoplist";

        break;
    case "laptopInteli3":
        $tableName = "tblaptoplist";

        break;
    case "laptopInteli5":
        $tableName = "tblaptoplist";

        break;
    case "laptopInteli7":
        $tableName = "tblaptoplist";

        break;
    case "laptopInteli9":
        $tableName = "tblaptoplist";

        break;
    case "laptopAMD3":
        $tableName = "tblaptoplist";

        break;
    case "laptopAMD5":
        $tableName = "tblaptoplist";

        break;
    case "laptopAMD7":
        $tableName = "tblaptoplist";

        break;
//    end ref laptop
//    
//    start ref ram
    case "ram":
        $tableName = "tbramlist";
        break;
    case "ramCorsair":
        $tableName = "tbramlist";

        break;
    case "ramGSkill":
        $tableName = "tbramlist";

        break;
    case "ramGalax":
        $tableName = "tbramlist";

        break;
    case "ramKing":
        $tableName = "tbramlist";

        break;
    case "ramTeamgroup":
        $tableName = "tbramlist";

        break;
    case "ramPatriot":
        $tableName = "tbramlist";

        break;
    case "ram1":
        $tableName = "tbramlist";

        break;
    case "ram12":
        $tableName = "tbramlist";

        break;
    case "ram24":
        $tableName = "tbramlist";

        break;
    case "ram4h":
        $tableName = "tbramlist";

        break;
    case "ram4GB":
        $tableName = "tbramlist";

        break;
    case "ram8GB":
        $tableName = "tbramlist";

        break;
    case "ram16GB":
        $tableName = "tbramlist";

        break;
//    end ref ram
//    
//    start ref mainboard
    case "mainboard":
        $tableName = "tbmainboard";
        break;
    case "mainboardAsus":
        $tableName = "tbmainboard";

        break;
    case "mainboardAcer":
        $tableName = "tbmainboard";

        break;
    case "mainboarDell":
        $tableName = "tbmainboard";

        break;
    case "mainboardMSI":
        $tableName = "tbmainboard";

        break;
    case "mainboardIntel":
        $tableName = "tbmainboard";

        break;
    case "mainboardAMD":
        $tableName = "tbmainboard";

        break;
//    end ref mainboard
//    
//    start ref cpu
    case "cpu":
        $tableName = "tbcpulist";

        break;
    case "CPUAMD":
        $tableName = "tbcpulist";

        break;
    case "CPUIntel":
        $tableName = "tbcpulist";

        break;
    case "CPU2":
        $tableName = "tbcpulist";

        break;
    case "CPU26":
        $tableName = "tbcpulist";

        break;
    case "CPU6h":
        $tableName = "tbcpulist";

        break;
//    end ref cpu
//    
//    start ref pccase
    case "pccase":
        $tableName = "tbpccaselist";

        break;
    case "pccaseCorsair":
        $tableName = "tbpccaselist";

        break;
    case "pccaseThermaltake":
        $tableName = "tbpccaselist";

        break;
    case "pccaseXigmatek":
        $tableName = "tbpccaselist";

        break;
    case "pccase1":
        $tableName = "tbpccaselist";

        break;
    case "pccase13":
        $tableName = "tbpccaselist";

        break;
    case "pccase3h":
        $tableName = "tbpccaselist";
        break;
//    end ref pccase
//    start ref radiator
    case "radiator":
        $tableName = "tbradiatorslist";

    case "radiator2":
        $tableName = "tbradiatorslist";

        break;
    case "radiator24":
        $tableName = "tbradiatorslist";

        break;
    case "radiator4h":
        $tableName = "tbradiatorslist";

        break;
//    end ref radiator
//    start ref speak
    case "speak":
        $tableName = "tbspeaklist";
    case "speakAudioengine":
        $tableName = "tbspeaklist";
    case "speakCreative":
        $tableName = "tbspeaklist";
    case "speak2":
        $tableName = "tbspeaklist";
        break;
    case "speak210":
        $tableName = "tbspeaklist";
        break;
    case "speak10":
        $tableName = "tbspeaklist";
        break;

//    end ref speak
//    start ref graphics
    case "graphics":
        $tableName = "tbgraphicslist";
        break;
    case "graphicsAsus":
        $tableName = "tbgraphicslist";
        break;
    case "graphicsGalax":
        $tableName = "tbgraphicslist";
        break;
    case "graphicsGigabyte":
        $tableName = "tbgraphicslist";
        break;
    case "graphicsMSI":
        $tableName = "tbgraphicslist";
        break;
    case "graphicsPalit":
        $tableName = "tbgraphicslist";
        break;
    case "graphicsNVIDIA":
        $tableName = "tbgraphicslist";
        break;
    case "graphicsGeForce":
        $tableName = "tbgraphicslist";
        break;
    case "graphicsRadeon":
        $tableName = "tbgraphicslist";
        break;
    case "graphics1":
        $tableName = "tbgraphicslist";
        break;
    case "graphics13":
        $tableName = "tbgraphicslist";
        break;
    case "graphics3h":
        $tableName = "tbgraphicslist";
        break;
//    end ref graphics
//    start ref monitor
    case "monitor":
        $tableName = "tbpcmonitor";
        break;
    case "monitor2":
        $tableName = "tbpcmonitor";
        break;
    case "monitor26":
        $tableName = "tbpcmonitor";
        break;
    case "monitor6h":
        $tableName = "tbpcmonitor";
        break;

}
$quer = "SELECT count(idProduct) as total FROM (
        
        SELECT
            $tableName.idProduct,
            $tableName.nameProduct,
            $tableName.rate,
            $tableName.photo1
        FROM
            $tableName
     ) AS r";
$r = mysqli_query($link, $quer);
$row = mysqli_fetch_assoc($r);
$total_records = $row['total'];
$current_page = isset($_GET['page']) ? $_GET['page'] : 1;
$limit = 9;
$total_page = ceil($total_records / $limit);
if ($current_page > $total_page) {
    $current_page = $total_page;
} else if ($current_page < 1) {
    $current_page = 1;
}
$start = ($current_page - 1) * $limit;
//$result = mysqli_query($conn, "SELECT * FROM news LIMIT $start, $limit");

