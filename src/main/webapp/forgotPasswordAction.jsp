<%-- 
    Document   : forgotPasswordAction
    Created on : Dec 2, 2020, 10:02:54 AM
    Author     : Edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>
        <%
      String user = request.getParameter("user");
      String securityCode = request.getParameter("code");
      
      String sql = "SELECT * FROM client WHERE username = ? and code = ?";
      String sql2 = "SELECT * FROM barber WHERE username = ? and code = ?";
      

       DBConnect dbConnect = new DBConnect();
//     excute first sql statemnet client
      String[] result = dbConnect.isPwdValid(sql, user, securityCode);
      String[] result2 = dbConnect.isPwdValid(sql2, user, securityCode);
      
      if( result[0].startsWith("Error: Invalid Credentials") ){
          out.print("no record");
      }else{
          
          out.print("there is record");
         
      }
      
      
      if( result2[0].startsWith("Error: Invalid Credentials") ){
          out.print("no record");
      }else{
          
          out.print("there is record");
      }
      
      
      
   
      


            %>
            
    </body>
</html>
