<%-- 
    Document   : editdriverstatus
    Created on : Sep 8, 2022, 10:02:54 AM
    Author     : Lunar
--%>


<%@page import="javax.swing.JOptionPane"%>
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
            String s=request.getParameter("id");	
            //JOptionPane.showMessageDialog(null, s);
            Statement st=connection.createStatement();
            int k = st.executeUpdate("update driver_DB set status = 'InActive' where id ='"+s+"'");
            if(k>0){
                response.sendRedirect("adminhome.jsp?msg=Successfuly updated");
            }else{
                 response.sendRedirect("adminhome.jsp?msg=UnSuccessfuly updated");
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        %>
    </body>
</html>
