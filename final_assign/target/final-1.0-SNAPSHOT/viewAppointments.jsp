<%-- 
    Document   : viewAppointments
    Created on : Dec 3, 2020, 5:47:18 PM
    Author     : Edwin
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="myBeans.DBConnect"%>
<% String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/barbershop";
    String user = "efeliz";
    String pwd = "Feliz.2009";

    Connection conn;
    PreparedStatement pstm; %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.6/css/responsive.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <title>Your Appointments</title>
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

        %> 

        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <a class="navbar-brand text-light" href="#">Barbershop</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">

                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link mr-2 text-light btn btn-primary" href="client.jsp"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Add New Appointment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light btn btn-success" href="viewAppointments.jsp"><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;View Your Appointments</a>
                    </li>
                </ul>

                <span class="navbar-text ml-auto">
                    <a class="nav-link float-sm-right" data-widget="pushmenu" href="logout.jsp"><i class="fa fa-power-off text-light" aria-hidden="true"></i></a>
                    <a class="nav-link float-sm-right text-light" data-widget="pushmenu" href="#">Hello, <%=session.getAttribute("user_name")%> !</a>

                </span>
            </div>
        </nav>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header text-center"><h3>Your Appointments</h3></div>
                    <div class="card-body">

                        <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
                            <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Payment Type</th>
                                    <th>Appointment Date</th>
                                    <th>Barber</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>

                                <%
                                    try {
                                        conn = DriverManager.getConnection(url, user, pwd);

                                        String sql = "select * from appointment where username = '" + userName + " '";
                                        pstm = conn.prepareStatement(sql);

                                        ResultSet resultSet = pstm.executeQuery(sql);
                                        while (resultSet.next()) {
                                %>

                                <tr>
                                    <td><%=resultSet.getString(2)%></td>
                                    <td><%=resultSet.getString(3)%></td>
                                    <td><%=resultSet.getString(5)%></td>
                                    <td><%=resultSet.getString(6)%></td>
                                    <td><%=resultSet.getString(7)%></td>
                                    <td><%=resultSet.getString(8)%></td>

                                </tr>

                                <%
                                        }
                                        conn.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        out.print("<p> Error barber " + e + "</p>");
                                    }
                                %>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Payment Type</th>
                                    <th>Appointment Date</th>
                                    <th>Barber</th>
                                    <th>Status</th>

                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- End of Form -->
        <!-- Bootstrap 4 Scripts -->
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.6/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.6/js/responsive.bootstrap4.min.js"></script>


        <script>$(document).ready(function () {
                $('#example').DataTable({

                    responsive: true,

                });
            });</script>

    </body>
</html>