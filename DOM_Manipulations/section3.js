var quoteTag = document.getElementById('famousQuote');

var eButton = document.getElementById('nas').addEventListener("click", function(event){
	var newParagraph = document.createElement('p');
	newParagraph.innerText = '"If you’re scared to take chances, you’ll never have the answers." - Nas';
	quoteTag.appendChild(newParagraph);
});

var biggieSmalls = document.getElementById('biggie').addEventListener("click", function (event){
	var newBiggie = document.createElement('p');
	newBiggie.innerText = '"Damn right I like the life I live, cause I went from negative to positive." - Biggie';
	quoteTag.appendChild(newBiggie);
});

var shawnCarter = document.getElementById('jayZ').addEventListener("click", function (event){
	var newJay = document.createElement('p');
	newJay.innerText = '"Remind yourself, nobody’s built like you. You design yourself." - Jay-Z';
	quoteTag.appendChild(newJay);
});

var Cent = document.getElementById('fiftyCent').addEventListener("click", function (event){
	var new50 = document.createElement('p');
	new50.innerText = '"I love you like a fat kid loves cake." - 50 Cent';
	quoteTag.appendChild(new50);
});