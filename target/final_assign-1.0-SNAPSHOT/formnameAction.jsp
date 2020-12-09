<%-- 
    Document   : formnameAction
    Created on : Oct 12, 2020, 4:37:17 PM
    Author     : Edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment</title>
        <%@include file="head.jsp" %>
    </head>
    <body>
        <%
         String  fname = request.getParameter("first");
         String  lname = request.getParameter("last");
         String  email = request.getParameter("email");
         
         
         out.print(
         "<div class=\"appt\"><h2> Hello "+fname+" "+lname+" </h2>"
         );
         
         out.print(
         "<p> your appointment has been sent to "+email+" </p></div>"
         );
         

        

            %>
    </body>
</html>
