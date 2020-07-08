
<?php

//Start get ref
if (!isset($_GET['ref'])) {
    $ref = "";
} else {
    $ref = $_GET['ref'];
}
//sortAZ sortLowHight sortHightLow = sortby
if (isset($_GET['sortby'])) {
    $sort = $_GET['sortby'];
    switch ($sort) {
        case"sortAZ":
            $columns = 'nameProduct';
            $sort_order = 'ASC';
            break;
        case"sortLowHight":
            $columns = 'rate';
            $sort_order = 'ASC';
            break;
        case"sortHightLow":
            $columns = 'rate';
            $sort_order = 'DESC';
            break;
        default :
            $columns = 'idProduct';
            $sort_order = 'ASC';
            break;
    }
}
else{
$columns = 'idProduct';
$sort_order = 'ASC';
}

$sql = "";
$tableName = "";
switch ($ref) {
//    ref laptop
    case "laptop":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit  ;";
        break;
    case "laptopAsus":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where nameProduct like '%Asus%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit  ;";
        break;
    case "laptopAcer":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where nameProduct like '%Acer%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopDell":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where nameProduct like '%Dell%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopHP":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where nameProduct like '%HP%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopLenovo":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where nameProduct like '%Lenovo%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptop10":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where rate < 10000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptop1020":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where rate between 10000000 and 20000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit  ;";
        break;
    case "laptop2040":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where rate > 20000000  ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit  ;";
        break;
    case "laptop4h":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where rate > 40000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopInteli3":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where `CPU_type` like '%i3%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopInteli5":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where `CPU_type` like '%i5%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopInteli7":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where `CPU_type` like '%i7%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopInteli9":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where `CPU_type` like '%i9%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopAMD3":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where `CPU_type` like '%Ryzen 3%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopAMD5":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where `CPU_type` like '%Ryzen 5%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "laptopAMD7":
        $tableName = "tblaptoplist";
        $sql = "select * from $tableName where `CPU_type` like '%Ryzen 7%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
//    end ref laptop
//    
//    start ref ram
    case "ram":
        $tableName = "tbramlist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ramCorsair":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where nameProduct like '%Corsair%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ramGSkill":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where nameProduct like '%GSkill%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ramGalax":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where nameProduct like '%Galax%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ramKing":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where nameProduct like '%King%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ramTeamgroup":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where nameProduct like '%TeamGroup%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ramPatriot":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where nameProduct like '%Patriot%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ram1":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where rate < 1000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ram12":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where rate between 1000000 and 2000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ram24":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where rate between 2000000 and 4000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ram4h":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where rate > 4000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ram4GB":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where `Capacity_GB` like '%4%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ram8GB":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where `Capacity_GB` like '%8%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "ram16GB":
        $tableName = "tbramlist";
        $sql = "select * from $tableName where `Capacity_GB` like '%16%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
//    end ref ram
//    
//    start ref mainboard
    case "mainboard":
        $tableName = "tbmainboard";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "mainboardAsus":
        $tableName = "tbmainboard";
        $sql = "select * from $tableName where nameProduct like '%Asus%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "mainboardAcer":
        $tableName = "tbmainboard";
        $sql = "select * from $tableName where nameProduct like '%Acer%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "mainboarDell":
        $tableName = "tbmainboard";
        $sql = "select * from $tableName where nameProduct like '%Dell%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "mainboardMSI":
        $tableName = "tbmainboard";
        $sql = "select * from $tableName where nameProduct like '%MSI%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "mainboardIntel":
        $tableName = "tbmainboard";
        $sql = "select * from $tableName where `Tong_quan` like '%Intel%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "mainboardAMD":
        $tableName = "tbmainboard";
        $sql = "select * from $tableName where `Tong_quan` like '%AMD%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
//    end ref mainboard
//    
//    start ref cpu
    case "cpu":
        $tableName = "tbcpulist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "CPUAMD":
        $tableName = "tbcpulist";
        $sql = "select * from $tableName where `Manufacturer` like '%AMD%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "CPUIntel":
        $tableName = "tbcpulist";
        $sql = "select * from $tableName where `Manufacturer` like '%Intel%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "CPU2":
        $tableName = "tbcpulist";
        $sql = "select * from $tableName where rate < 2000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "CPU26":
        $tableName = "tbcpulist";
        $sql = "select * from $tableName where rate between 2000000 and 6000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "CPU6h":
        $tableName = "tbcpulist";
        $sql = "select * from $tableName where rate > 6000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
//    end ref cpu
//    
//    start ref pccase
    case "pccase":
        $tableName = "tbpccaselist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "pccaseCorsair":
        $tableName = "tbpccaselist";
        $sql = "select * from $tableName where nameProduct like '%Corsair%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "pccaseThermaltake":
        $tableName = "tbpccaselist";
        $sql = "select * from $tableName where nameProduct like '%Thermaltake%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "pccaseXigmatek":
        $tableName = "tbpccaselist";
        $sql = "select * from $tableName where nameProduct like '%Xigmatek%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "pccase1":
        $tableName = "tbpccaselist";
        $sql = "select * from $tableName where rate < 1000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "pccase13":
        $tableName = "tbpccaselist";
        $sql = "select * from $tableName where rate between 1000000 and 3000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "pccase3h":
        $tableName = "tbpccaselist";
        $sql = "select * from $tableName where rate > 3000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
//    end ref pccase
//    start ref radiator
    case "radiator":
        $tableName = "tbradiatorslist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "radiator2":
        $tableName = "tbradiatorslist";
        $sql = "select * from $tableName where rate < 2000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "radiator24":
        $tableName = "tbradiatorslist";
        $sql = "select * from $tableName where rate between 2000000 and 4000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "radiator4h":
        $tableName = "tbradiatorslist";
        $sql = "select * from $tableName where rate > 4000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
//    end ref radiator
//    start ref speak
    case "speak":
        $tableName = "tbspeaklist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "speakAudioengine":
        $tableName = "tbspeaklist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "speakCreative":
        $tableName = "tbspeaklist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "speak2":
        $tableName = "tbspeaklist";
        $sql = "select * from $tableName where rate < 2000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "speak210":
        $tableName = "tbspeaklist";
        $sql = "select * from $tableName where rate between 2000000 and 10000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "speak10":
        $tableName = "tbspeaklist";
        $sql = "select * from $tableName where rate >= 4000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;

//    end ref speak
//    start ref graphics
    case "graphics":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphicsAsus":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where nameProduct like '%Asus%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphicsGalax":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where nameProduct like '%Galax%' ";
        break;
    case "graphicsGigabyte":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where nameProduct like '%Gigabyte%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphicsMSI":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where nameProduct like '%MSI%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphicsPalit":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where nameProduct like '%Palit%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphicsNVIDIA":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where `Graphic_processor` like '%NVIDIA%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphicsGeForce":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where `Graphic_processor` like '%GeForce%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphicsRadeon":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where `Graphic_processor` like '%Radeon%'   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphics1":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where rate < 5000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphics13":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where rate between 5000000 and 10000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "graphics3h":
        $tableName = "tbgraphicslist";
        $sql = "select * from $tableName where rate > 10000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
//    end ref graphics
//    start ref monitor
    case "monitor":
        $tableName = "tbpcmonitor";
        $sql = "select * from $tableName   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "monitor2":
        $tableName = "tbpcmonitor";
        $sql = "select * from $tableName where rate < 2000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "monitor26":
        $tableName = "tbpcmonitor";
        $sql = "select * from $tableName where rate between 2000000 and 6000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
    case "monitor6h":
        $tableName = "tbpcmonitor";
        $sql = "select * from $tableName where rate > 6000000   ORDER BY " . $columns . '   ' . $sort_order . " LIMIT $start, $limit ;";
        break;
//    end ref monitor
    default :
        header("Location: error502.php");
        exit();
}
//end get ref
?>