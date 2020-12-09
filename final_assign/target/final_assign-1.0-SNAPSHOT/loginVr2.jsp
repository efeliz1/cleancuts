<%-- 
    Document   : loginVr2
    Created on : Dec 2, 2020, 1:48:25 PM
    Author     : Edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/regVr2.css">
        <link rel="stylesheet" href="./css/forgotPassword.css">
         <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Login</title>
    </head>
    <body>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand text-light" href="index.jsp">Barbershop</a></nav>
    
        <div id="page">
        <div class="container">
	<div class="header">
		<h2>Login</h2>
	</div>
            <form action="loginAction.jsp" method="GET" id="form" class="form">
		<div class="form-control">
			<label for="username">Username</label>
			<input name="user" type="text" placeholder="Username" id="username">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
	
                <div class="form-control">
                                <label for="username">Password</label>
                                <input name="password" type="password" placeholder="Password" id="password">
                                <i class="fas fa-check-circle"></i>
                                <i class="fas fa-exclamation-circle"></i>
                                <small>Error message</small>
                        </div>

                <button type="submit" >Submit</button>
	</form>
            <div id="fp">
            <span >
                <a href="forgotPassword.jsp">Forgot password ?</a>
            </span>
                </div>
            <p>If you don't already have an account, you can</p>
            <button class='switch_btn' ><a href="regVr2.jsp">Register</a></button>
            
        </div>
        </div>
        
        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
