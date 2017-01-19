
$(document).ready(function(){


	function Jukebox() {

		this.eAudioElement = $('#music');
		this.player = $('#music')[0];		

		this.currentSongIndex = 0;
		this.availableSongs = [{
			'title': "Dancing Choose",
			'artist': 'TV on the Radio',
			'fileName': 'Dancing Choose.m4a'
		}, {	
			'title': "ABC",
			'artist': 'Jackson 5',
			'fileName': "Abc.m4a"
		}, {
			'title': "I Want You Back",
			'artist': 'Jackson 5',
			'fileName': "I Want You Back.m4a"
		}]
	}


	Jukebox.prototype.playSong = function() {
		this.player.play();
		console.log(this.player.duration);
	}

	Jukebox.prototype.pauseSong = function() {
		this.player.pause();
	}

	Jukebox.prototype.nextSong = function(){
		this.currentSongIndex++
		if (this.currentSongIndex > this.availableSongs.length -1) {
			this.currentSongIndex = 0;
		}

		this.eAudioElement.attr('src', this.availableSongs[this.currentSongIndex].fileName)

	}

	Jukebox.prototype.previousSong = function(){
		this.currentSongIndex--
		if (this.currentSongIndex < 0) {
			this.currentSongIndex = this.availableSongs.length -1;
		}

		this.eAudioElement.attr('src', this.availableSongs[this.currentSongIndex].fileName)
	}

	Jukebox.prototype.loadSongInfo = function(){
		return (this.availableSongs[this.currentSongIndex].title) + " by " +
		(this.availableSongs[this.currentSongIndex].artist);


	}

	var myJukebox = new Jukebox()
	$('#playButton').on("click", function(){
		myJukebox.playSong();	
		$('.songInfo').text(myJukebox.loadSongInfo());


	});

	$('#pauseButton').on('click', function() {
		myJukebox.pauseSong();
	});

	$('#nextButton').on('click', function(){
		myJukebox.nextSong();
		myJukebox.playSong();
		$('.songInfo').text(myJukebox.loadSongInfo());
	});

	$('#previousButton').on('click', function(){
		myJukebox.previousSong();
		myJukebox.playSong();
		$('.songInfo').text(myJukebox.loadSongInfo());
	});


	$('#music').on('timeupdate', function() {
    	$('#seekbar').attr("value", this.currentTime / this.duration);
	});

});


