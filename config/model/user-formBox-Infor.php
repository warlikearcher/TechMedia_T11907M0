<div class="user-form-title">
    Thông tin Tài Khoản
</div>
<form id="user-input-form" class="user-input-form" method="POST">
    <table class="user-input-table">
        <input type="hidden" id="code" name="code" value="<?php echo $acc[0] ?>">
        <input type="hidden" id="id" name="IDUser" value="<?php echo $acc[0] ?>">
        <input type="hidden" id="table" name="table" value="tbusers">
        <tbody>
            <tr>
                <td class="user-input-lable"><label>Email</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-email" name="EMAIL" value="<?php echo $acc[1] ?>" readonly></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Họ tên</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-fullname" name="FULLNAME" value="<?php echo $acc[4] ?>" ></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Giới tính</label></td>
                <td class="user-input-field">
                    <select class="input-field" id="user-gender" name="GENDER">
                        <?php
                        switch ($acc[7]) {
                            case "Nam":echo'<option value="Nam" selected hidden>Nam</option>';
                                break;
                            case "Nu":echo'<option value="Nu" selected hidden>Nữ</option>';
                                break;
                            case "Khac":echo'<option value="Nu" selected hidden>Nữ</option>';
                                break;
                            default:echo'<option value="" selected hidden>Chọn</option>';
                        }
                        ?>
                        <option value="Nam">Nam</option>
                        <option value="Nu">Nữ</option>
                        <option value="Khac">Khác</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Ngày sinh</label></td>
                <td class="user-input-field"><input class="input-field" type="date" id="user-dob" name="DOB" value="<?php echo $acc[8] ?>"></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Số điện thoại</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-phonenumber" name="PHONE" value="<?php echo $acc[6] ?>"></td>
            </tr>
            <tr>
                <td class="user-input-lable"><label>Địa chỉ</label></td>
                <td class="user-input-field"><input class="input-field" type="text" id="user-address" name="ADDRESS" value="<?php echo $acc[5] ?>"></td>
            </tr>
                <td class="user-input-lable"><label>Tỉnh/Thành phố</label></td>
                <td class="user-input-field">
                    <select class="input-field" id="user-zipcode" name="ZIPCODE">
                        <?php
                            if (isset($acc[9])||$acc[9]!=NULL) {
                                switch ($acc[9]) {
                                    case "70000": echo'<option value="70000" selected hidden>Hồ Chí Minh</option>';
                                        break;
                                    case "10000": echo'<option value="10000" selected hidden>Hà Nội</option>';
                                        break;
                                    case "61000": echo'<option value="61000" selected hidden>Gia Lai</option>';
                                        break;
                                    case "77000": echo'<option value="77000" selected hidden>Bình Thuận</option>';
                                        break;
                                    case "78000": echo'<option value="78000" selected hidden>Vũng Tàu</option>';
                                        break;
                                    case "63000": echo'<option value="63000" selected hidden>Đắk Lắk</option>';
                                        break;
                                    case "66000": echo'<option value="66000" selected hidden>Lâm Đồng</option>';
                                        break;
                                    case "91000": echo'<option value="94000" selected hidden>Cần Thơ</option>';
                                        break;
                                    case "84000": echo'<option value="84000" selected hidden>Tiền Giang</option>';
                                        break;
                                    case "81000": echo'<option value="81000" selected hidden>Đồng Tháp</option>';
                                        break;
                                    case "57000": echo'<option value="57000" selected hidden>Khánh Hòa</option>';
                                        break;
                                    case "56000": echo'<option value="56000" selected hidden>Phú Yên</option>';
                                        break;
                                    
                                }
                            } else {
                                echo '<option value="" selected hidden>Chọn</option>';
                            }
                        ?>
                        
                        <option value="70000">Hồ Chí Minh</option>
                        <option value="10000">Hà Nội</option>
                        <option value="61000">Gia Lai</option>
                        <option value="77000">Bình Thuân</option>
                        <option value="78000">Vũng Tàu</option>
                        <option value="63000">Đắk Lắk</option>
                        <option value="66000">Lâm Đồng</option>
                        <option value="94000">Cần Thơ</option>
                        <option value="84000">Tiền Giang</option>
                        <option value="81000">Đồng Tháp</option>
                        <option value="57000">Khánh Hòa</option>
                        <option value="56000">Phú Yên</option>
                    </select>
                </td>
            <tr>
                <td colspan="2"><p id="result"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" class="submit-btn" value="Cập nhật"></td>
            </tr>
        </tbody>
    </table>
</form>

