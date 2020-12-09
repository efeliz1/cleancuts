<!DOCTYPE html>
<html>
  <head>
    <title>Book Now</title>
    <%@include file="head.jsp" %>
    <link rel="stylesheet" href="./css/bookNow.css">
  </head>
  <body>

	<div class="card">
    <div id="regText">
    <h2 >Register</h2>

    </div>
    <form>

    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="inputUName">Username</label>
        <input type="name" class="form-control" id="inputUName">
      </div>
      <!-- Name -->
      <div class="form-group col-md-6">
        <label for="inputFName">First Name</label>
        <input type="name" class="form-control" id="inputFName">
      </div>
      <div class="form-group col-md-6">
        <label for="inputLName">Last Name</label>
        <input type="name" class="form-control" id="inputLName">
      </div>
      <!-- Password -->
      <div class="form-group col-md-6">
        <label for="inputPassword">Password</label>
        <input type="password" class="form-control" id="inputPassword" onkeyup="checkPass()" oninput="checkLength()">
        <p id="checker"></p>
      </div>
      
      

      <div class="form-group col-md-6">
        <label for="inputCPassword">Confirm Password</label>
        <input type="password" class="form-control" id="inputCPassword" onkeyup="checkPass()">
        <span id="confirm-message2" class="confirm-message"></span>
      </div>
      <!-- E-Mail -->
       <div class="form-group col-md-6">
        <label for="inputEmail">E-Mail</label>
        <input type="email" class="form-control" id="inputEmail">
      </div>

      <div class="form-group col-md-6">
        <label for="inputCEmail">Confirm E-Mail</label>
        <input type="email" class="form-control" id="inputCEmail" onkeyup="checkEmail()">
        <span id="confirm-message3" class="confirm-message"></span>
      </div>
     
      <!-- Services -->
    </div>
    <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0"></legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked required>
          <label class="form-check-label" for="gridRadios1">
            Barber
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2" required>
          <label class="form-check-label" for="gridRadios2">
           Client
          </label>
        </div>
        
       </div>
    
    </div>
    </fieldset>
    <button type="submit" class="btn btn-primary">Register</button>
    <p>If you already have an account, you can</p>
    <button type="submit" class="btn btn-primary"><a href="login.jsp">Log In</a></button>
    </div>
    
  </form>
		
	</div>
  
    <script src="script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  </body>
</html>