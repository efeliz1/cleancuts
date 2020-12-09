<%-- 
    Document   : addAppointment
    Created on : Dec 6, 2020, 6:43:24 PM
    Author     : Prasad Chathuranga
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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

            Connection conn = null;
            PreparedStatement pstm;

            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String barber = request.getParameter("barber");
            String date = request.getParameter("date");
            String payment = request.getParameter("payment");
            String client = request.getParameter("client");
            String status = "Pending";

            if ("1".equals(payment)) {
                payment = "Cash";
            } else if ("2".equals(payment)) {
                payment = "Credit Card";

            } else {
                payment = "Bitcoin";
            }

            String barberID = null;

            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, pwd);

            try {
                String sql = "SELECT barberID FROM barber WHERE username = '" + barber + " '";
                pstm = conn.prepareStatement(sql);

                ResultSet rs = pstm.executeQuery();

                while (rs.next()) {

                    barberID = rs.getString(1);
                }
            } catch (SQLException e) {
                out.print("<p> Error barber " + e + "</p>");
                System.out.println(e);
            }

            try {

                String sql2 = "INSERT INTO appointment(apptID, fname, lname,username, paymentType, apptDate,barber,status, clientID, barberID) VALUES (0,'" +
                        fname + "','" + lname + "','" + userName + "','" + payment + "','" +
                        date + "','" + barber + "','" + status + "','" + client + "','" + barberID + "')";

                pstm = conn.prepareStatement(sql2);

                pstm.executeUpdate();

                out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

                out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

                out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");

                out.println("<script>");

                out.println("$(document).ready(function(){");

                out.println("swal('Appointment Placed Successfully !','Thank You for Using Our Service !!!','success');");

                out.println("});");

                out.println("</script>");

                RequestDispatcher rd = request.getRequestDispatcher("client.jsp");
                rd.include(request, response);

            } catch (SQLException e) {
                out.print("<p> Error Insert" + e + "</p>");
                System.out.println(e);
            }

        %>
    </body>
</html>
