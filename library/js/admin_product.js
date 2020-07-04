<script>
    function cpu() {
        $.post("./php/admin_formBox_CPU.php", function (data) {
        document.getElementById("cate").innerHTML = data;
        });
    }
    function gpu() {
                $.post("./php/admin_formBox_GPU.php", function (data) {
                document.getElementById("cate").innerHTML = data;
        });
    }
    function lap() {
                        $.post("./php/admin_formBox_Laptop.php", function (data) {
                        document.getElementById("cate").innerHTML = data;
        });
    }
    function cas() {
                                $.post("./php/admin_formBox_Case.php", function (data) {
                                document.getElementById("cate").innerHTML = data;
        });
    }
    function ram() {
                                        $.post("./php/admin_formBox_Ram.php", function (data) {
                                        document.getElementById("cate").innerHTML = data;
        });
    }
    function speak() {
                                                $.post("./php/admin_formBox_Speak.php", function (data) {
                                                document.getElementById("cate").innerHTML = data;
        });
    }

</script>