const player;

function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
	height: '360',
	width: '640',
	videoId: 'M7lc1UVf-VE',
	events: {
	  'onReady': onPlayerReady,
	  'onStateChange': onPlayerStateChange
	}
  });
}

// 4. The API will call this function when the video player is ready.
function onPlayerReady(event) {
  event.target.playVideo();
}

// 5. The API calls this function when the player's state changes.
//    The function indicates that when playing a video (state=1),
//    the player should play for six seconds and then stop.
var done = false;

function onPlayerStateChange(event) {
  if (event.data == YT.PlayerState.PLAYING && !done) {
	setTimeout(stopVideo, 6000);
	done = true;
  }
}

function stopVideo() {
  player.stopVideo();
}
