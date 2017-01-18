$(document).ready(function (){

//Use the OMDB api to create a quick movie search app


//create a workable search bar (hint: `.keyup()` and `.val()`)

	$('#searchInput').keyup(function() {
		
		var userText = $('input[name="search"]').val();
		
			
		$.ajax({   
			url: 'http://www.omdbapi.com/',   
			data: {     
				t: userText,
				y: '',
				plot: 'short',
				r: 'json' 
			},
			success: function(response) { 
				$("#movie-title").html(response.Title);   
				$("#poster").attr("src", response.Poster); 
				$('#actors').text('Actors in this film: ' + response.Actors);
				$('#awards').text('Awards: ' + response.Awards);
				$('#runtime').text('Runtime: ' + response.Runtime);
				// console.log(response);   
			} 
		});

 	});
			
	
})





