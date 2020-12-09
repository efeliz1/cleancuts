<%-- 
    Document   : loginAction
    Created on : Nov 15, 2020, 7:19:02 PM
    Author     : efeliz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/style.css">
        <title>Login Action</title>
    </head>
    <body>
        <div id="page">
       <%
      String user = request.getParameter("user");
      String pwd = request.getParameter("password");
//      String sql = "select fname, lname from client where username = '"
//              + user + "' and password = '" + pwd + "'";
      String sql = "SELECT * FROM client WHERE username = ? and password = ?";
      String sql2 = "SELECT * FROM barber WHERE username = ? and password = ?";
      String redirectURL = "client.jsp";
      String redirectURL2 = "barber.jsp";
//      String sql = "SELECT * FROM client"
//	+ " WHERE (username= ? AND password= ? )"
//	+ " UNION" + " SELECT  * FROM barber" 
//        + " WHERE (username= ? AND password= ?)";
      DBConnect dbConnect = new DBConnect();
//     excute first sql statemnet client
      String[] result = dbConnect.isPwdValid(sql, user, pwd);
      String[] result2 = dbConnect.isPwdValid(sql2, user, pwd);
      
      if( result[0].startsWith("Error: Invalid Credentials") ){
          out.print("no record");
      }else{
          
          out.print("there is record");
          response.sendRedirect("client.jsp");
      }
      
      
      if( result2[0].startsWith("Error: Invalid Credentials") ){
          out.print("no record");
      }else{
          
          out.print("there is record");
          response.sendRedirect("barber.jsp");
      }
      
            session = request.getSession();
            session.setAttribute("user_name", user);
      
//      if (result[0].length() >= 6 && result[0].substring(0, 6).equals("Error:")) {
//        session.setAttribute("logged", "index");
//        response.sendRedirect("index.jsp?error='" + result[0] + "'");
//      }else{
//          
//      }
//      if(rst == null){
//          //barber
//          rst = dbConnect.validatePwd(sql2, user, pwd);
//                  
//      }
      
//      try {
//        rst.next();
//        out.print("<h2>Welcome " + rst.getString(4) + " " + rst.getString(5));
//      } catch (Exception e) {
//        out.print("<h2>Invalid username or password</h2>");
//      }
    %>
    
    
<!--   <table>
        <%=dbConnect.createHTMLTable(sql) %>
    </table>-->
        </div>
    </body>
</html>
