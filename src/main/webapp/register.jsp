<%-- 
    Document   : register
    Created on : Nov 12, 2020, 6:23:30 PM
    Author     : efeliz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="./css/register.css">
        <script src="./js/formValedation.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="card">
        <div class='face'>
                <h2>Register</h2>
                <form action="registerAction.jsp" method="POST" id="form" onsubmit="FormSubmited()">
                    <input type='text' name='user' placeholder='Username' id="username">
                    
                  <!--Name-->
                  <input id="inputFName" name="first" type='text' type="name" name="first" for="inputFName" placeholder='First Name' required>
                  <input id="inputLName" name="last" type='text' type="name" name="last" for="inputLName" placeholder='Last Name' required>
                  <!--E-Mail-->
                  <input id="inputEmail" name="email" type="email" name="email" type='text' for="inputEmail" placeholder='Email' required>
                  <input id="inputCEmail"  onkeyup="checkEmail()" type="email" name="cEmail" type='text' for="inputCEmail" placeholder='Email Confirm' required>
                  <!--Password-->
                  <input onkeyup="checkPass()" name="password" oninput="checkLength()" for="inputPassword" type="password" placeholder='Password'required>
                  <input type="password" placeholder='Confirm Password' id="inputCPassword" onkeyup="checkPass()" required>
                  
                  <div id="radioCenter">
                      
                      <label for="barber">Barber</label><br>
                      <input type="radio" id="barber" name="duty" value="barber" >
                      
                      <label for="client">Client</label><br>
                      <input type="radio" id="client" name="duty" value="client" >
                      
                  </div>
                  <input id="submitBtn" type='submit'  value='Register' class='btn'>
                </form>
                <p>If you already have an account, you can</p>
                <button type="submit" class='switch btn'><a href="login.jsp">Log In</a></button>
              </div>
        </div>
    </body>
</html>
