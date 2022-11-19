<%-- 
    Document   : usrloginact
    Created on : Sep 12, 2022, 10:39:41 PM
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
            String uname = request.getParameter("uname");
            String pwd = request.getParameter("pwd");
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("select * from user_db where uname = '"+uname+"' and pawd='"+pwd+"'");
            if(rs.next()){
                session.setAttribute("uname", uname);
                response.sendRedirect("userhome.jsp");
            }else{
                 response.sendRedirect("error.jsp?"+"Problem With Credentials");
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
