// Create an HTML page with javascript that listens for a keypress.
// When the user presses that key, the text of the H1 should show the value of the key they have pressed.
// Example: If the user presses "J", the text inside the H1 should be "J".
$(document).ready(function(){

	$('#user_input').on('keyup', function(event) {
		var userInput= $(this).val();
			console.log(userInput);
	    return $('#answer').text(userInput);
	});



});