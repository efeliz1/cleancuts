/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


const form = document.getElementById('form');
const username = document.getElementById('username');
const email = document.getElementById('email');
const email2 = document.getElementById('email2');
const password = document.getElementById('password');
const password2 = document.getElementById('password2');
const submitBtn = document.getElementById('submitBtn');

form.addEventListener('submit', e => {
	e.preventDefault();
	
	if(checkInputs() === true){
            form.submit();
        };
        
});

function checkInputs() {
	// trim to remove the whitespaces
	const usernameValue = username.value.trim();
	const emailValue = email.value.trim();
        const email2Value = email2.value.trim();
	const passwordValue = password.value.trim();
	const password2Value = password2.value.trim();
        let error = false;
        
	
	if(usernameValue === '') {
		setErrorFor(username, "Username cannot be blank");
                error = true ;
	} else {
		setSuccessFor(username);
	}
	
	if(emailValue === '') {
		setErrorFor(email, 'Email cannot be blank');
                                error = true ;

	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'Not a valid email');
                                error = true ;

	} else {
		setSuccessFor(email);
	}
        
        if(email2Value === '') {
		setErrorFor(email2, 'Email Confirm cannot be blank');
                                error = true ;

	} else if(emailValue !== email2Value) {
		setErrorFor(email2, 'Email does not match');
                                error = true ;

	} else{
		setSuccessFor(email2);
	}
	
	if(passwordValue === '') {
		setErrorFor(password, 'Password cannot be blank');
                                error = true ;

	} else {
		setSuccessFor(password);
	}
	
	if(password2Value === '') {
		setErrorFor(password2, 'Password2 cannot be blank');
                                error = true ;

	} else if(passwordValue !== password2Value) {
		setErrorFor(password2, 'Passwords does not match');
                                error = true ;

	} else{
		setSuccessFor(password2);
	}
        
        return error === false;
    
}

function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}
	
function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}

