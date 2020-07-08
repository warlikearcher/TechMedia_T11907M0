<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../../library/css/css_register2.css" rel="stylesheet" type="text/css"/>
        <script src="../../library/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    </head>
    <body>
        <?php
            include 'resgister-formBox.php';
        ?>
        <script>
            var btn = document.getElementById("btn");
            var res = document.getElementById("register");
            var log = document.getElementById("login");
            var box = document.getElementById("form-box");
            var submit = null;
            
            function register() {
                btn.style.left = "128px";
                res.style.left = "50px";
                log.style.left = "-400px";
                box.style.height= "480px";
            }
            function login() {
                btn.style.left = "0px";
                res.style.left = "450px";
                log.style.left = "50px";
                box.style.height= "350px";
            }
            
            res.onsubmit=function(){
                var name = document.getElementById("re-user-fullname").value;
                var email = document.getElementById("re-user-email").value;
                var pass = document.getElementById("re-user-password").value;
                var repass = document.getElementById("re-user-repassword").value;
                var phone = document.getElementById("re-user-phonenumber").value;
                if (pass===repass) {
                    $.post("../../config/model/register_func.php",{email:email, pass:pass, name:name, phone:phone},function(data){
                        $("#re-result").html(data);
                    });
                    return false;
                } else {
                    alert("Verify password isn't qualified!");
                    repass.focus;
                    document.getElementById("re-user-repassword").style.borderBottom = "solid 2px rgba(255,0,0,0.3)";
                    return false;
                }
                };
                var re;
                log.onsubmit=function(){
                var email = document.getElementById("user-email").value;
                var pass = document.getElementById("user-password").value;
                $.post("../../config/model/scan_func.php",{email:email, pass:pass},function (data){
                    if (data) {
                       document.getElementById("result").style.display = "none";
                       log.submit();
                    } else {
                       document.getElementById("result").style.display = "block";  
                       re = "false";
                    }
                });
                    return false;
                };



        </script> 
    </body>
</html>
