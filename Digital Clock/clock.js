function timer() {

var date = new Date();
var hours = date.getHours();
var minutes = date.getMinutes();
var seconds = date.getSeconds();
//var milliseconds = date.getMilliseconds();

var clock = date + hours + minutes + seconds;

	if (hours < 10) {
		hours = "0" + hours;
	}

	if (minutes < 10) {
		minutes = "0" + minutes;
	}

	if (seconds < 10) {
		seconds = "0" + seconds;

	};

		document.getElementById("timer").innerHTML = ( + hours + ":" + minutes + ":" + seconds);


	if (hours <= 11) {
		document.getElementById('greetingMessage').innerHTML = "Good morning!";
	}

	else if ((hours > 11) && (hours <= 16)) {
		document.getElementById('greetingMessage').innerHTML = "Good afternoon!";
	}

	else {
		document.getElementById('greetingMessage').innerHTML = "Good evening!";
	}
	

}
timer();
 setInterval(timer, 1000);