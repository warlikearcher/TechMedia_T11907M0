        <div class="background"> 
            <div id="form-box">
                <div class="btn-box">
                    <div id="btn"></div>
                    <button type="button" class="toggle-btn" onclick="login()">Đăng nhập</button>
                    <button type="button" class="toggle-btn" onclick="register()">Đăng ký</button>
                </div>
                <form id="login" class="input-form" method="POST" action="../../config/model/login_func.php">
                    <input type="email" class="input-field" name="user-email" id="user-email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Email" required>
                    <input type="password" class="input-field" name="user-password" id="user-password" placeholder="Mật khẩu" required>
                    <input type="checkbox" id="checkbox-remem" name="checkbox-remem" value="yes" class="btn-check"><span>Nhớ mật khẩu</span>
                    <div class="result" id="result" style="color: red; display: none;">Tài khoản hoặc mật khẩu đăng nhập không hợp lệ!</div>
                    <div class="result" id="result2" style="color: red;"></div>
                    <input type="submit" class="submit-btn" name="login-submit" value="Đăng nhập">
                </form>
                <form id="register" class="input-form" method="POST">
                    <input type="text" class="input-field" name="re-user-fullname" id="re-user-fullname" placeholder="Họ tên" title="Họ tên của bạn!" required>
                    <input type="email" class="input-field" name="re-user-email" id="re-user-email" placeholder="Email" required>
                    <input type="password" class="input-field" name="re-user-password" id="re-user-password" placeholder="Mật khẩu" pattern=".{6,}" title="Mật khẩu phải ít nhất 6 ký tự" required>
                    <input type="password" class="input-field" name="re-user-repassword" id="re-user-repassword" placeholder="Nhập lại mật khẩu" title="Nhập lại mật khẩu phải giống với mật khẩu như trên" required>
                    <input type="text" class="input-field" name="re-user-phonenumber" id="re-user-phonenumber" placeholder="Số điện thoại" pattern="[0]+[0-9]{9}" title="Số điện thoại của bạn">
                    <div class="result" id="re-result"></div>
                    <input type="submit" class="submit-btn" name="register-submit" value="Đăng ký">
                </form>
            </div>
        </div>
