
    document.getElementById("btnCus").onclick = function () {
        $.post("./php/admin_formBox_CusInfor.php", function (data) {
        document.getElementById("user-form-box").innerHTML = data;
        });
    };
    document.getElementById("btnProduct").onclick = function () {
                $.post("./php/admin_formBox_Product.php", function (data) {
                document.getElementById("user-form-box").innerHTML = data;
        });
    };
    document.getElementById("btnOut").onclick = function () {
                        window.location.assign("logout_func.php");
    };
    
