<%-- 
    Document   : regestrionVr2
    Created on : Dec 2, 2020, 12:09:37 PM
    Author     : Edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="./css/regVr2.css">
       
        <title>Register</title>
    </head>
<body>
        <div id="page">
        <div class="container">
	<div class="header">
		<h2>Register</h2>
	</div>
            <form action="registerAction.jsp" method="post" id="form" class="form">
		<div class="form-control">
			<label for="username">Username</label>
			<input name="user" type="text" placeholder="Username" id="username" required>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
	<div class="form-control">
			<label for="username">First Name</label>
			<input name="first" type="text" placeholder="First Name" id="firstName" required>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
	<div class="form-control">
			<label for="username">Last Name</label>
			<input name="last" type="text" placeholder="Last Name" id="lastName" required>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
	<div class="form-control">
			<label for="username">Email</label>
			<input name="email" type="email" placeholder="Email" id="email" required>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
        <div class="form-control">
			<label for="username">Email Confirm</label>
			<input type="email" placeholder="Email confim" id="email2" required>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
	<div class="form-control">
			<label for="username">Password</label>
			<input name="password" type="password" placeholder="Password" id="password" required>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
	<div class="form-control">
			<label for="username">Password Confirm</label>
			<input type="password" placeholder="Password Confirm" id="password2" required>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
         <div class="form-control">
			<label for="username">4 digit Security code</label>
			<input name="code" type="password" placeholder="4 Digit Code" required>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			<small>Error message</small>
		</div>
         <div id="radioCenter">
                      
                      <label for="barber">Barber</label><br>
                      <input type="radio" id="barber" name="duty" value="barber">
                      
                      <label for="client">Client</label><br>
                      <input type="radio" id="client" name="duty" value="client">
                      
                  </div>
                <button type="submit" >Submit</button>
	</form>
            <p>If you already have an account, you can</p>
                <button type="submit" class='switch_btn'><a href="loginVr2.jsp">Log In</a></button>
        </div>
        </div>
        
<script src="./js/formValedation.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>     
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>  
    

</body>

</html>
