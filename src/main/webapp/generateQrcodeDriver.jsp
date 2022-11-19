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
            ResultSet rs = st.executeQuery("select * from driver_DB where id = '"+s+"'");
            if(rs.next()){
                String id = rs.getString(1);
                String respone = "vieQrCode.jsp?id="+"Driver"+id;
               String data = "name"+":"+rs.getString(2)+"DOB"+":"+rs.getString(4)+"Address"+":"+rs.getString(5)+"Phone"+":"+rs.getString(6)+
                       "email"+":"+rs.getString(7)+"zip"+":"+rs.getString(8)+"Experienec"+":"+rs.getString(9)+"about"+":"+rs.getString(10)+
                       "status"+":"+rs.getString(11);
               Demo ob = new Demo();
               ob.main(data, "Driver"+id);
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
