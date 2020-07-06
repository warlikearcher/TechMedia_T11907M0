<!-- Content Wrapper -->
    <div id="content-wrapper" class="content-wrapper">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 shadow">

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">
            
            <!-- Nav Item - 1 -->
            <!-- Nav Item - User -->
            <li class=" dropdown users-li">
              <a class="dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Hòa Trần</span>
                <img class="img-profile rounded-circle" src="#">
              </a>
              <!-- Dropdown - User Information -->
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid fluid-tab">
            <?php
                if(isset($_GET['src'])){
                    $src = $_GET['src'];
                }
                else{
                    $src = 'dashBoard';
                }
                switch ($src) {

                    case "userTable":
                        include (__DIR__ . "../Tab/User_table.php");
                        break;
                    case "adminTable":
                        include (__DIR__ . "../Tab/admin_table.php");
                        break;
                    case "productTable":
                        include (__DIR__ . "../Tab/product_Table.php");
                        break;
                    case "news":
                        include (__DIR__ . "../Tab/index_blog.php");
                        break;
                    case "History":
                        include (__DIR__ . "../Tab/History_tab.php");
                        break;
                    default:
                        include (__DIR__ . "../Tab/DashBoard_Tab.php");
                        break;
                }
                
            ?>
        </div>

      </div>
      <!-- End  Main Content -->


    </div>
    <!-- End Content Wrapper -->