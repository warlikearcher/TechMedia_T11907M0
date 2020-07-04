<div class="user-form-title">
    Thông tin Tài Khoản
</div>
<form class="user-input-form" method="POST">
    <table class="user-input-table">
        <tbody>
            <tr>
                <td class="user-input-lable"><label>Email</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-email" name="user-email" value="<?php echo $acc[1] ?>" readonly></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Họ tên</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-fullname" name="user-fullname" value="<?php echo $acc[4] ?>" ></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Giới tính</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-gender" name="user-gender" value="<?php if ($acc[7]==1){ echo "Nam";} else {echo "Nữ";} ?>" ></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Ngày sinh</label></td>
                <td class="user-input-field"><input class="input-field" type="date" id="user-dob" name="user-dob" value="<?php echo $acc[8] ?>"></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Số điện thoại</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-phonenumber" name="user-phonenumber" value="<?php echo $acc[6] ?>"></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Địa chỉ</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-address" name="user-address" value="<?php echo $acc[5] ?>"></td>
            </tr>

            <tr>
                <td colspan="2"><input type="submit" class="submit-btn" value="Cập nhật"></td>
            </tr>
        </tbody>
    </table>
</form>

