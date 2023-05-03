<!--header-->
  <div class="header-top" id="home">
    <div class="container">
      <div class="head-section">
              <div class="clearfix"> </div>
          </div>
            </div>
          </div>
            <div class="clearfix"></div>
      </div>
        <div class="clearfix"></div>
    <div class="sub-header">
    <!--start-top-nav-->
             <nav class="top-nav">
              <ul class="top-nav">
                  <li style="float: left; font-weight: bold; font-size: 20px;"><a href="index.php">Josefheim Foundation</a></li>
                <li><a href="index.php">Home</a></li>
                <li><a href="about.php">  About </a></li>
                <li><a href="services.php">Services</a></li>
                <li><a href="eligibility.php">Eligibility</a></li>
                <li><a href="rules.php"> Rules </a></li>
                <li><a href="search.php"> Search </a></li>
                <li><a href="contact.php">Contact</a></li>
                  <li><a href="admin/login.php">Admin</a></li>
                  <div class="clearfix"> </div>

              </ul>
              <a href="#" id="pull"><h6>MENU</h6><img src="images/menu-icon.png" title="menu" /></a>

            </nav>
            <!--start-top-nav-script-->
          <script>
            $(function() {
              var pull    = $('#pull');
                menu    = $('nav ul');
                menuHeight  = menu.height();
              $(pull).on('click', function(e) {
                e.preventDefault();
                menu.slideToggle();
              });
              $(window).resize(function(){
                    var w = $(window).width();
                    if(w > 320 && menu.is(':hidden')) {
                      menu.removeAttr('style');
                    }
                });
            });
          </script>
  <!--//End-top-nav-script-->

      <!-- script-for-menu -->
        <script>
          $(document).ready(function(){
            $("span.menu").click(function(){
              $(".top-nav ul").slideToggle(200);
            });
          });
        </script>
      <div class="clearfix"> </div>
    </div>
    <!--/header-->