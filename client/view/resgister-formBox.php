        <div class="background"> 
            <div id="form-box">
                <div class="btn-box">
                    <div id="btn"></div>
                    <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                    <button type="button" class="toggle-btn" onclick="register()">Register</button>
                </div>
                <form id="login" class="input-form" method="POST" action="../../config/model/login_func.php">
                    <input type="email" class="input-field" name="user-email" id="user-email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Email" required>
                    <input type="password" class="input-field" name="user-password" id="user-password" placeholder="Password" required>
                    <input type="checkbox" id="checkbox-remem" name="checkbox-remem" value="yes" class="btn-check"><span>Remember Password</span>
                    <div class="result" id="result" style="color: red; display: none;">Tài khoản hoặc mật khẩu đăng nhập không hợp lệ!</div>
                    <div class="result" id="result2" style="color: red;"></div>
                    <input type="submit" class="submit-btn" name="login-submit" value="Log In">
                </form>
                <form id="register" class="input-form" method="POST" action="#">
                    <input type="text" class="input-field" name="re-user-fullname" id="re-user-fullname" placeholder="Full Name" title="Your Full Name!" required>
                    <input type="email" class="input-field" name="re-user-email" id="re-user-email" placeholder="Email" required>
                    <input type="password" class="input-field" name="re-user-password" id="re-user-password" placeholder="Password" pattern=".{6,}" title="Password must contain atleast 6 characters!" required>
                    <input type="password" class="input-field" name="re-user-repassword" id="re-user-repassword" placeholder="Verify password" title="Verify password must be the same as Password!" required>
                    <input type="text" class="input-field" name="re-user-phonenumber" id="re-user-phonenumber" placeholder="Phone Number" pattern="[0]+[0-9]{9}" title="Phone number contains 10 numbers and begins with 0">
                    <div class="result" id="re-result"></div>
                    <input type="submit" class="submit-btn" name="register-submit" value="Register">
                </form>
            </div>
        </div>
