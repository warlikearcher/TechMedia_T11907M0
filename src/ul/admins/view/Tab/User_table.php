<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Quản lý khách hàng</h1>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Họ tên</th>
                        <th>Địa chỉ</th>
                        <th>Số điện thoại</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sql = "select * from tbusers where ROLE = '0' or ROLE IS NULL ";
                    $r = mysqli_query($link, $sql);
                    $table = 'tbusers';
                    $a_flight = mysqli_fetch_all($r);
                    foreach ($a_flight as $item) {
                        echo '<tr>';
                        echo "<td id='ID'> $item[0] </td>";
                        echo "<td> $item[1] </td>";
                        echo "<td> $item[2] </td>";
                        echo "<td> $item[4] </td>";
                        echo "<td> $item[5] </td>";
                        echo "<td> $item[6] </td>";
                        if ($item[7]) {
                            $gender="Nam";
                        } else {
                            $gender="Nữ";
                        }
                        echo "<td> $gender </td>";
                        echo "<td> $item[8] </td>";
                        echo "<td>";
                        echo "<a href='?action=update&id=$item[0]&table=tbusers'>Thay đổi</a> | ";
                        if ($item[3] == NULL) {
                            echo "<a href='?action=abled&id=$item[0]'>Hiệu hóa</a> | ";
                        } else {
                            echo "<a href='?action=disabled&id=$item[0]'>Vô hiệu hóa</a> | ";
                        }
                        echo "<a href='?action=delete&id=$item[0]&name=$item[4]'>Xóa</a>";
                        echo "</td>";
                        echo '</tr>';
                    }
                    ?>
                    </tbody>
            </table>
        </div>
    </div>
</div>