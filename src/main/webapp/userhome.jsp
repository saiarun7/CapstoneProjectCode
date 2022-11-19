<%-- 
    Document   : userhome
    Created on : Sep 12, 2022, 10:48:39 PM
    Author     : Lunar
--%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title> Vehicle Registration Details By Vehicle Number</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader --> 
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
         <div class="container">
            <div class="row">
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo"> <a href="index.html">User Dash Board</a> </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                  <div class="menu-area">
                     <div class="limit-box">
                        <nav class="main-menu">
                           <ul class="menu-area-main">
                              <li class="active"> <a href="index.html">Home</a> </li>
                              <!--<li> <a href="adddriverdetails.jsp">Add Driver Details</a> </li>
                              <li> <a href="addvehicledetails.jsp"> Add Vehicles</a> </li>
                              <li> <a href="generateQRcode.jsp">Generate QR Code</a> </li>-->
                              <li> <a href="ViewDrivers_1.jsp">view Drivers</a> </li>
                              <li> <a href="Viewvehicles_1.jsp">view Vehicles</a> </li>
                            <!--  <li> <a href="generateQRcode.jsp">Generate QR Code</a> </li>-->
                              <li> <a href="index.html">Logout</a> </li>
                           </ul>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end header inner --> 
      </header>
      <!-- end header -->
      <div>
          <center>
              <%
              String uname = session.getAttribute("uname").toString();
              %>
              Welcome to User <%=uname%>
              <h2>Driver Search</h2>
              <div>
                  <form method="post" action="dsrchact.jsp">
                      <input type="search" name="dsrch" value="Search Driver" width="500">
                      <input type="submit" name="submit" value="search">
                  </form>
              </div>
              <h2>Vehicle Search</h2>
              <div>
                  <form method="post" action="vsrchact.jsp">
                      <input type="search" name="vsrch" value="Search Driver" width="500">
                      <input type="submit" name="submit" value="search">
                  </form>
              </div>
               <h2>License Search:</h2>
              <div>
                  <form method="post" action="licchact.jsp">
                      <input type="search" name="vsrch" value="Search Driver" width="500">
                      <input type="submit" name="submit" value="search">
                  </form>
              </div>
              
              
          </center>
      </div>
              
            <div class="copyright">
               <p>Copyright 2022 All Right Reserved By <a href="">Copy rights</a></p>
            </div>
         </div>
      </footr>
      <!-- end footer -->
      <!-- Javascript files--> 
      <script src="js/jquery.min.js"></script> 
      <script src="js/popper.min.js"></script> 
      <script src="js/bootstrap.bundle.min.js"></script> 
      <script src="js/jquery-3.0.0.min.js"></script> 
      <script src="js/plugin.js"></script> 
      <!-- sidebar --> 
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script> 
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script src="js/custom.js"></script>
      <script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
         
         $(".zoom").hover(function(){
         
         $(this).addClass('transition');
         }, function(){
         
         $(this).removeClass('transition');
         });
         });
         
      </script> 
   </body>
</html>