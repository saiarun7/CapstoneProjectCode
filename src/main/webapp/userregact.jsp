<%-- 
    Document   : userregact
    Created on : Sep 12, 2022, 10:19:58 PM
    Author     : Lunar
--%>

<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            String uname=null,pawd=null,email=null,phone=null,addrs=null;
            uname = request.getParameter("uname");
            pawd = request.getParameter("pwd");
            email = request.getParameter("email");
            phone = request.getParameter("phone");
            addrs = request.getParameter("addrs");
            Statement st = connection.createStatement();
            int i = st.executeUpdate("insert into user_db(uname,pawd,email,phone,addrs) values('"+uname+"','"+pawd+"','"+email+"','"+phone+"','"+addrs+"')");
            if(i>0){
                response.sendRedirect("index.html?msg=Registered successfully");
            }
            
        }catch(Exception e){
            e.printStackTrace();
             if(e.getMessage()!=null){
                response.sendRedirect("error.jsp?"+e.getMessage());
            }
        }
        %>
    </body>
</html>
