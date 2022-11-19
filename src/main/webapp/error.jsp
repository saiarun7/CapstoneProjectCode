<%-- 
    Document   : error
    Created on : Sep 4, 2022, 7:39:28 PM
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
    <cetner>
        <h1>Error Exist in your values</h1>
        <%
        try{
            String req = request.getQueryString();
            out.println(req);
            out.println("<h2>Clike Here to home page<a href=index.html>Home</a></h2>");
        }catch(Exception e){
            e.printStackTrace();
        }
        %>
    </cetner>
    </body>
</html>
