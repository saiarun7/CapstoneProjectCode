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
            //JOptionPane.showMessageDialog(null, s);
            Statement st=connection.createStatement();
            ResultSet rs = st.executeQuery("select * from license_DB where id = '"+s+"'");
            if(rs.next()){
                String id = rs.getString(1);
                String respone = "vieQrCode_1.jsp?id="+"LIC"+id;
               String data = "no"+":"+rs.getString(2)+"name"+":"+rs.getString(4)+"DO/SO/WO"+":"+rs.getString(5)+"issuedate"+":"+rs.getString(6)+
                       "Exp Date"+":"+rs.getString(7);
               Demo ob = new Demo();
               ob.main(data, "LIC"+id);
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
