<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
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
              <h3>Vehicle Details</h3>
               <table width="602" border="1.5" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td width="104" height="31" bgcolor="#FF0000"><div align="center" class="style22">User ID </div></td>
                <td width="124" bgcolor="#FF0000"><div align="center" class="style22">Driver Name </div></td>
                <td width="108" bgcolor="#FF0000"><div align="center" class="style22">Phone </div></td>
                <td width="171" bgcolor="#FF0000"><div align="center" class="style22">Email </div></td>
              </tr>
              <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        String query="select * from vehicle_DB"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
               s1 = rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(6);
		s4=rs.getString(7);
		%>
              <tr>
                <td height="29"><div align="center" class="style23"><%=s1%></div></td>
                <td><div align="center" class="style23"><%=s2%></div></td>
                <td><div align="center" class="style23"><%=s3%></div></td>
                <td><div align="center" class="style23"><%=s4%></div></td>
                <!--<td><div align="center" class="style23"><a href="editdriverstatus.jsp?id=<%=s1%>">Activate Driver</a></div></td>
                <td><div align="center" class="style23"><a href="editdriverstatus_1.jsp?id=<%=s1%>">InActivate Driver</a></div></td>-->
                -->
              </tr>
              <%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
            <p>&nbsp;</p>
          </center>
          <footer>
      </div>
              
           
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