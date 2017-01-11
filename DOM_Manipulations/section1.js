//Part 1 

var zippyElements = document.querySelectorAll('.zippy');
	console.log("Number of zippy Elements: " + (zippyElements.length));

var zoopyElements = document.querySelectorAll('.zoopy');
	console.log("Number of zoopy Elements: " + (zoopyElements.length));

var toomy = document.getElementById('tooomy');
	console.log(toomy.innerText);

var moogy = document.getElementById('moogy');
	console.log(moogy.innerText);


var paragraphs = document.getElementsByTagName('p');
	console.log(paragraphs.length);


var h3E = document.getElementsByTagName('h3');
	console.log(h3E.length);


var digDogE = document.querySelectorAll('.diggy.doggy');
	console.log(digDogE.length);


//Part 2

var zippyE = document.getElementById('zippyElements');
	zippyE.innerText = (zippyElements.length);

var zoopyE = document.getElementById('zoopyElements');
	zoopyE.innerText = (zoopyElements.length);

var toomyE = document.getElementById('tooomyText');
	toomyE.innerHTML = (toomy.innerText);

var moogyE = document.getElementById('moogyText');
	moogyE.innerHTML = (moogy.innerText);


var parE = document.getElementById('pElements');
	parE.innerText = (paragraphs.length);

var h3Eee = document.getElementById('h3Elements');
	h3Eee.innerText = (h3E.length);

var diggyDog = document.getElementById('diggyDoggyElements');
	diggyDog.innerText = (digDogE.length);
