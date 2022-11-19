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
                        <div class="logo"> <a href="index.html">Add Driver Details</a> </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                  <div class="menu-area">
                     <div class="limit-box">
                        <nav class="main-menu">
                           <ul class="menu-area-main">
                              <li class="active"> <a href="index.html">Home</a> </li>
                              <li> <a href="adddriverdetails.jsp">Add Driver Details</a> </li>
                              <li> <a href="addvehicledetails.jsp"> Add Vehicles</a> </li>
                              <li> <a href="generateQRcode.jsp">Generate QR Code</a> </li>
                              <li> <a href="ViewDrivers.jsp">view Drivers</a> </li>
                              <li> <a href="Viewvehicles.jsp">view Vehicles</a> </li>
                              <li> <a href="generateQRcode.jsp">Generate QR Code</a> </li>
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
              Welcome to Admin
              <table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
                <center><tr>
                   <td><h1>Add Driver Details</h1></td>
                </tr><center>
                 <form method="post" action="adddriveract.jsp">
                <table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
                <tr>
                    <td align='center'>Driver Name:</td>
                    <td><input type='text' name='dname'></td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align='center'>Driver Sur Name:</td>
                    <td><input type='text' name='dsname'></td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align='center'>Date Of Birth:</td>
                    <td><input type='date' name='dob'></td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align='center'>Address:</td>
                    <td><input type='text' name='addrs'></td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align='center'>Phone:</td>
                    <td><input type='text' name='phone'></td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align='center'>Email:</td>
                    <td><input type='text' name='email'></td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align='center'>Zip:</td>
                    <td><input type='text' name='zip'></td>
                </tr>
                 <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align='center'>Driving Experience:</td>
                    <td><input type='text' name='exprnc'></td>
                </tr>
                <!-- <tr> <td>&nbsp;</td> </tr>
                 <tr>
                    <td align='center'>Languages Known:</td>
                    <td><input type="checkbox" name="ch1" value="0">Telugu</input>
                    <input type="checkbox" name="ch2" value="1">English</input>
                    <input type="checkbox" name="ch3" value="2">>Hindi</input>
                    <input type="checkbox" name="ch4" value="3">Tamil</input>
                    <input type="checkbox" name="ch5" value="4">Malayalam</input></td>
                </tr>-->
                 <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align='center'>About Driver:</td>
                    <td><textarea name='about' rows="5" cols="25"></textarea></td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
                <tr>
                    <td align='center'><input type='submit' name='REGISTER' value="Add Driver"></td>
                </tr>
                </table>
                 </form>
                </table>
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