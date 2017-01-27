$(document).ready(function(){


	$('#submitButton').click(function(event){ 

		var user_password= $('input[name="user_password"]').val();
			console.log(user_password);	
			
		if (user_password != "12345678"){
			alert("Incorrect! Password needs to be 1234567.");
		}


		var user_name = $('input[name="user_name"]').val();
		var didFindANumber = false;
		
		for(var i = 0; i < user_name.length; i++) {
			if ((user_name[i] == 0) || (user_name[i] == 1) || 
				(user_name[i] == 2) || (user_name[i] == 3) || 
				(user_name[i] == 4) || (user_name[i] == 5) || 
				(user_name[i] == 6) || (user_name[i] == 7) || 
				(user_name[i] == 8) || (user_name[i] == 9)) {
				
				didFindANumber = true;
				$('h1').text("You have a good name.");
			
			}

		} 

		if (didFindANumber == false){
			alert ("You still need a number.")
		}


	
		return false;
	})
		



});




// 

// In a Javascript file, write code that does the following things:
// // checks that the password is 12345678
// // checks that the username contains at least one number
// // if anything is wrong, send an alert message saying "incorrect"
// // Your page should also include an H1 tag. 
// If the information in the form is correct, have Javascript change the text in the H1.



// $(document).ready(function(){

// 	$('#submitButton').click(function(){	

//  		if (user_name != "Jake") {                               
//     		alert ("Incorrect");
//  		 } 

// if (user_password != 12345678)
// 	alert("Incorrect");

//   else {
//     $('h1').text('Correct!');
//   } 

// 	})

// })