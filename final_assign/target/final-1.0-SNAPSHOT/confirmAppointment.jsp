<%-- 
    Document   : confirmAppointment
    Created on : Dec 7, 2020, 12:59:27 PM
    Author     : Prasad Chathuranga
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment</title>
    </head>
    <body>
        <%

            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            if (session.getAttribute("user_name") == null) {
                response.sendRedirect("loginVr2.jsp");
            }

            String userName = (String) session.getAttribute("user_name");

            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/barbershop";
            String user = "efeliz";
            String pwd = "Feliz.2009";

            Connection conn;
            PreparedStatement pstm;

            String id = request.getParameter("id");
            String status = "Confirmed";

            try {
                Class.forName(driver);
                conn = DriverManager.getConnection(url, user, pwd);
                String sql = "Update appointment set status=? where apptID='" + id + " '";
                pstm = conn.prepareStatement(sql);
                pstm.setString(1, status);

                pstm.executeUpdate();

                out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

                out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

                out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");

                out.println("<script>");

                out.println("$(document).ready(function(){");

                out.println("swal('Confirmed !','You have Confirmed the Appointment !!!','success');");

                out.println("});");

                out.println("</script>");

                RequestDispatcher rd = request.getRequestDispatcher("barber.jsp");
                rd.include(request, response);
            } catch (SQLException sql) {
                out.println(sql);
            }

        %>
    </body>
</html>
