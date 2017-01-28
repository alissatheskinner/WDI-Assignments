// function timer(){


setTimeout(function() {
	$('#myModal').css("display", "block")

}, 3000)


var span = document.getElementsByClassName("close")[0];



// When the user clicks on <span> (x), close the modal
span.onclick = function() {
   $('#myModal').css("display", "none")
}


};