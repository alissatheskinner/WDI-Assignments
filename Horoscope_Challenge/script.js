$(document).ready(function(){


	function celebMatch(sign) {
	  $.ajax({
          url: 'https://node-horoscopes.herokuapp.com/api/horoscopes/celebrities/' + sign,
          success: function(response) {
          	
          	$('#celebrityName').html(response.actors[0].name);
          	$('#celebImage').attr("src", response.actors[0].imageUrl);
          },
          error: function(error){

          }
         
	   })
	}

	function dailyHoroscope(sign) {
		$.ajax({
			url: 'https://node-horoscopes.herokuapp.com/api/horoscopes/today/' + sign,
			success: function(response) {
				
				$('#yourSign').text(response.sign);
				$('#guts p').text(response.horoscope);
				
			},
			error: function(error){

			}
			
        })
	}


	function Match(fromSign, toSign){

		$.ajax({
			url: 'https://node-horoscopes.herokuapp.com/api/horoscopes/dating/' + fromSign + "/" + toSign,
			success: function(response) {
				
				$('#yourMatch').text(response.text);
				
			},
			error: function(error){
				
			}
		})
	}


//Event Handlers 
	
	$('#celebButton').click(function(event){
		var selectedSign = $("#celebSign").find(':selected').val();
		celebMatch(selectedSign);
		dailyHoroscope(selectedSign);
	});


	$('#matchButton').click(function(event){
		var fromMatch = $("#sign1").find(':selected').val();
		var toMatch = $("#sign2").find(':selected').val();
		Match(fromMatch, toMatch);
	})


});








