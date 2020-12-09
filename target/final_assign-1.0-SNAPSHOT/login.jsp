<%-- 
    Document   : login
    Created on : Nov 12, 2020, 4:58:14 PM
    Author     : efeliz
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="./css/login.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
        
        <%--<%@include file="head.jsp" %>--%>
    </head>
    <body>
            <div class='card'>
              <div class='face'>
                <h2>Log In</h2>
                <form action="loginAction.jsp" method="GET">
                  <input type='text' name="user" placeholder='Username'>
                  <input type='text' name="password" placeholder='Password'>
                  <input type='submit' value='Log In' class='btn'>
                </form>
                <span><a>Forgot password ?</a></span>
                <p>If you don't already have an account, you can</p>
                <button class='switch btn' ><a href="register.jsp">Register</a></button>
              </div>
              
            </div>
    </body>
</html>
