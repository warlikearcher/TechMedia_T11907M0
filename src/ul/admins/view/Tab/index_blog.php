<!--<?php
include_once '../controllers/database/connectDB.php';
?>
-->

<div style="background-color: #D3D3D3; width: 100%; border-radius: 10px;">
    <h2>Quản lý bài viết</h2>
    <span>
        <a class="button"  href="./././blogs/new_blog.html">Thêm bài viết mới</a> <br><br>
    </span>

    <hr>
    <br/>
    <div class="jumbotron" style="margin-left:  50px; margin-right: 50px; background-color: white;overflow-y: scroll;height: 500px;max-height: 500px">
        <table class="table table-hover">
            <thead>
                <tr style="font-weight: bold;">
                    <td>ID</td>
                    <td>Tiêu Đề Bài Viết</td>
                    <td>Nội Dung</td>
                    <td>Người Đăng</td>
                    <td>Ngày Đăng</td>
                    <td>Hành Động</td>
                </tr>
            </thead>
            <tbody>                   
                <?php
                $sql = "select * from tbarticles";
                $r = mysqli_query($link, $sql);

                $a = mysqli_fetch_all($r);
                foreach ($a as $item) {
                    echo '<tr>';
                    echo "<td> $item[0] </td>";
                    echo "<td> $item[1] </td>";
                    echo "<td> $item[3] </td>";
                    echo "<td> $item[4] </td>";
                    echo "<td> $item[5] </td>";
                    echo "<td>";
                    echo "<a href='blogs/view_blog.php?id=$item[0]'>Xem</a> | ";
                    echo "<a href='blogs/edit_blog.php?id=$item[0]'>Sửa</a> | ";
                    echo "<a href='blogs/delete_blog.php?id=$item[0]'  onclick= 'return kt()'>Xóa</a>";

                    echo "</td>";
                    echo '</tr>';
                }
                ?>
            </tbody>
        </table>
    </div>
</div>
<script>
    function kt() {
        return confirm("Có chắc chắn rằng bạn muốn xóa bài viết ?");
    }
</script>

