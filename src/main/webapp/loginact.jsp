<%-- 
    Document   : loginact
    Created on : Sep 4, 2022, 7:35:54 PM
    Author     : Lunar
--%>

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
            if("admin".equalsIgnoreCase(uname) && "admin".equalsIgnoreCase(pwd)){
                session.setAttribute("uid", uname);
                response.sendRedirect("adminhome.jsp");
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
