<%-- 
    Document   : registerAction
    Created on : Nov 14, 2020, 1:51:14 PM
    Author     : efeliz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="myBeans.DBConnect, java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Action</title>
    </head>
   <body>
    <%
      String first = request.getParameter("first");
      String last = request.getParameter("last");
      String user = request.getParameter("user");
      String pwd = request.getParameter("password");
      String email = request.getParameter("email");
      String securityCode = request.getParameter("code");
      String redirectURL = "loginVr2.jsp";
      
//      String sql = "insert into client values (0, '"+user+"', '"+pwd+"', '"+
//              first+"', '"+last+"','"+email+"')";
//      String sql2 = "select fName, lName, username from client";
      
      String value = request.getParameter("duty");
       DBConnect dbConnect = new DBConnect();
       
        if(value.equals("barber")){
            String sql = "insert into barber values (0, '"+user+"', '"+pwd+"', '"+
              first+"', '"+last+"','"+email+"','"+securityCode+"')";
            if(dbConnect.updateDB(sql).equals("Update Successful")){
                out.print("Update Successful");
                    response.sendRedirect(redirectURL);
            }else{
                            out.print("Update Fail!");

            };

        }else if (value.equals("client")){
            String sql = "insert into client values (0, '"+user+"', '"+pwd+"', '"+
              first+"', '"+last+"','"+email+"','"+securityCode+"')";
                
             if(dbConnect.updateDB(sql).equals("Update Successful")){
                
                    response.sendRedirect(redirectURL);
            };
        }else{
            out.print("Select barber or client");
        }

     
            
    %>

    <%--<table>
     <%=  dbConnect.createHTMLTable(sql2) %>             
    </table>--%>
  </body>
</html>
