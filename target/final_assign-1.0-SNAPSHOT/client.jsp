<%-- 
    Document   : client
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
        <!--<link rel="stylesheet" href="./css/style.css">-->
        <!-- Bootstrap 4 CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <title>Client Dashboard</title>
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
            
            String userName = (String)session.getAttribute("user_name");

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



        <div class="container mt-5 mb-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header text-center"><h3>Make New Appointment</h3></div>
                        <div class="card-body">
                            
                             
                            <form action="addAppointment.jsp" method="POST" id="form" class="form">
                                <% 

                                    try {

                                        Class.forName(driver);
                                        conn = DriverManager.getConnection(url, user, pwd);
                                        String sql = "SELECT * FROM client WHERE username = '"+userName+" '";
                                        pstm = conn.prepareStatement(sql);
                                        ResultSet rs = pstm.executeQuery();
                                        
                                         
                                            while (rs.next()) {

                                                int id = rs.getInt(1);
                                                String fname = rs.getString(4);
                                                String lname = rs.getString(5);

                                        
                                %>
                                <div class="form-group">
                                    
                                   
                                    <input type="text" value="<%=fname%>" name="fname" id="fname" class="form-control" hidden>
                                    <input type="text" hidden value="<%=id%>" name="client" id="client" class="form-control" hidden>
                                   
                                </div>    
                                <div class="form-group">
                                    
                                    <input type="text" value="<%=lname%>" name="lname" class="form-control" hidden> 
                                                                <%
                                            }
                                        } catch (SQLException sqe) {
                                            out.println(sqe);
                                        }
                                        %>
                                </div>
     

                                <% 

                                    try {

                                        Class.forName(driver);
                                        conn = DriverManager.getConnection(url, user, pwd);
                                        String sql = "SELECT * FROM barber";
                                        pstm = conn.prepareStatement(sql);
                                        ResultSet rs = pstm.executeQuery();
                                %>

                                <div class="form-group">
                                    <label for="inputState">Select Barber</label>



                                    <select name="barber" class="form-control">
                                        <%
                                          
                                            while (rs.next()) {

                                                String name = rs.getString(2);                                            

                                        %>

                                        <option value="<%=name%>"><%=name%></option>


                                        <%
                                            }
                                        %>
                                    </select>


                                    <%
                                        } catch (SQLException sqe) {
                                            out.println(sqe);
                                        }
                                    %>

                                </div>

                                <div class="form-group">
                                    <label for="inputState">Select Appointment Date</label>
                                    <input type="date" name="date" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label for="inputState">Select Payment Type  :   &nbsp;</label>
                                    <div class="form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" value="1" name="payment">Cash
                                        </label>
                                    </div>
                                    <div class="form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" value="2" name="payment">Credit Card
                                        </label>
                                    </div>

                                    <div class="form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" value="3" name="payment">Bitcoin
                                        </label>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <input type="submit" value="Make New Appointment" class="btn btn-primary">
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    







    <!-- End of Form -->
    <!-- Bootstrap 4 Scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>