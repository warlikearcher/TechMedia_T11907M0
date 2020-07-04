                    <script>
                        document.getElementById("btnInfor").onclick = function () {
                            $.post("./../../config/model/user-formBox-Infor.php", function (data) {
                                document.getElementById("user-form-box").innerHTML = data;
                            });
                        };
                        document.getElementById("btnHis").onclick = function () {
                            $.post("./../../config/model/user-formBox-His.php", function (data) {
                                document.getElementById("user-form-box").innerHTML = data;
                            });
                        };
                        document.getElementById("btnCart").onclick = function () {
                            $.post("./../../config/model/user-formBox-Cart.php", function (data) {
                                document.getElementById("user-form-box").innerHTML = data;
                            });
                        };
                        document.getElementById("btnOut").onclick = function () {
                            window.location.assign("./../../config/model/logout_func.php");
                        };
                    </script>