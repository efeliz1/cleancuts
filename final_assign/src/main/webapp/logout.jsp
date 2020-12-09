<%-- 
    Document   : logout
    Created on : Dec 6, 2020, 10:41:19 PM
    Author     : Prasad Chathuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("loginVr2.jsp");
        %>
    </body>
</html>
