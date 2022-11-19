<%-- 
    Document   : generateQrcodeDriver
    Created on : Sep 8, 2022, 10:46:35 AM
    Author     : Lunar
--%>
<%@page import="Demo.Demo"%>
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
            JOptionPane.showMessageDialog(null, s);
            Statement st=connection.createStatement();
            ResultSet rs = st.executeQuery("select * from vehicle_DB where id = '"+s+"'");
            if(rs.next()){
                String id = rs.getString(1);
                String respone = "vieQrCode_1.jsp?id="+"Vehicle"+id;
               String data = "Vehicle name"+":"+rs.getString(2)+"Model"+":"+rs.getString(4)+"DOM"+":"+rs.getString(5)+"DOR"+":"+rs.getString(6)+
                       "Vehicle type"+":"+rs.getString(7)+"Company"+":"+rs.getString(8)+"About"+":"+rs.getString(9)+"status"+":"+rs.getString(10)
                       ;
               Demo ob = new Demo();
               ob.main(data, "Vehicle"+id);
                response.sendRedirect(respone);
            }
            else{
                 response.sendRedirect("adminhome.jsp?msg=UnSuccessfuly updated");
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        %>
    </body>
</html>
