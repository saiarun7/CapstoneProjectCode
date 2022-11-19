<%-- 
    Document   : adddriveract
    Created on : Sep 4, 2022, 8:37:55 PM
    Author     : Lunar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        try{
           String str1=null,str2=null,str3=null,str4=null,str5=null,str6=null,str7=null,str8=null,str9=null,str10=null;
           String str91 = null,str92 = null,str93 = null,str94=null;
           str1 = request.getParameter("lno");
           str2 = request.getParameter("lname");
           str3 = request.getParameter("sodowo");
           str4 = request.getParameter("address");
           str5 = request.getParameter("issuedt");
           str6 = request.getParameter("expdt");
           
          /* String lang="";
           if(str9=="1"){
               lang = str9 +",";
           } if(str91=="2"){
               lang = lang +","+str91;
           } if(str92=="3"){
               lang = lang +","+str92;
           }  if(str93=="4"){
               lang = lang +","+str93;
           } if(str94=="0"){
               lang = lang +","+str94;
           }*/
           Statement st = connection.createStatement();
           int k = st.executeUpdate("insert into license_DB(lno,lname,sodowo,address,issuedt,expdt) values('"+str1+"','"+str2+"','"+str3+"','"+str4+"','"+str5+"','"+str6+"')");
           if(k>0){
               response.sendRedirect("adminhome.jsp?message=succesfully");
           }    
        }
        catch(Exception e){
            e.printStackTrace();
            if(e.getMessage()!=null){
                response.sendRedirect("error.jsp?"+e.getMessage());
            }
        }
        %>
    </body>
</html>
