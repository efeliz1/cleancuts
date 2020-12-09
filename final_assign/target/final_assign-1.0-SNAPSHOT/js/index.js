
    //  Element Selected
     var  inputEmail = document.getElementById("inputEmail");
     var  inputCEmail = document.getElementById("inputCEmail");
     var  inputCPassword = document.getElementById("inputCPassword");
     var  inputPassword = document.getElementById("inputPassword");


      function checkLength()
      {
        let password = inputPassword.value;

        if (password.match(/[a-z]/g) && password.match( 
                    /[A-Z]/g) && str.match( 
                    /[0-9]/g) && str.match( 
                    /[^a-zA-Z\d]/g) && str.length >= 8) 
                res = "TRUE"; 
            else{
              document.getElementById("checker").innerHTML = "minimum 8 \n\
characters that include an uppercase letter and a digit "; 
            }
        } 
      


      function checkPass()
        {
            
            var password = inputPassword;
            var confirm  = inputCPassword;
            //Store the Confirmation Message Object ...
            var message = document.getElementById('confirm-message2');
            
            var good_color = "#66cc66";
            var bad_color  = "#ff6666";
            
            if(password.value == confirm.value){
                //The passwords match. 
                 
                confirm.style.backgroundColor = good_color;
                message.style.color           = good_color;
                message.innerHTML             = "Passwords Match!";
            }else{
                //The passwords do not match.
                
                confirm.style.backgroundColor = bad_color;
                message.style.color           = bad_color;
                message.innerHTML             = "Passwords Do Not Match!";
                
            }
            
        }  

//         function checkEmail()
//        {
//            
//            var email = inputEmail;
//            var email2  = inputCEmail;
//            //Store the Confirmation Message Object ...
//            let message = document.getElementById('confirm-message3');
//            
//            var good_color = "#66cc66";
//            var bad_color  = "#ff6666";
//            
//            if(email.value == email2.value){
//                
//                email2.style.backgroundColor = good_color;
//                message.style.color           = good_color;
//                message.innerHTML             = '<img src="/wp-content/uploads/2019/04/tick.png" alt="Passwords Match!">';
//            }else{
//                
//                email2.style.backgroundColor = bad_color;
//                message.style.color           = bad_color;
//                message.innerHTML             = '<img src="/wp-content/uploads/2019/04/publish_x.png" alt="Passwords Do Not Match!">';
//            }
//        }

function checkEmail(){
   
}


 function FormSubmited()
   {
    var haveSubmitted=false;
    if(haveSubmitted){
        return false;
    }
    haveSubmitted=true;
    return true;    //we want the first click to occur.
   }