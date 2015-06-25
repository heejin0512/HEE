<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>TEST</title>
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
<script type="text/javascript"
	src="/resources/core/js/jwplayer/jwplayer.js"></script>
<script type="text/javascript">
	var userAgent  = window.navigator.userAgent.toLowerCase();

	var browser= {
			ios : /webkit/.test(userAgent) && /\(iphone|ipod|ipad/.test(userAgent),
			android : /webkit/.test(userAgent)&&/android/.test(userAgent)
	}

	var url = "";
	if(browser.ios){
		url = "http://192.168.198.130:9977/stream.mp4";  
	}else{
	    url  ="http://192.168.198.130:9999/stream.flv"   
	}
	/* 	file : "http://192.168.43.223:5555/stream.flv",  */
	
</script>
</head>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Stream </a>
			</div>
		</div>
	</nav>
	
	<div class="jumbotron">
		<div class="container">
	
			<h1>FLV</h1>
			<div id="player"></div>
			<script type="text/javascript">
			var playerInstance = jwplayer("player").setup({
				
				file : url, 
				width : 640,
				height : 360,
				buffer : 100,
				controls : true,
				stretching : "exactfit",
				buffer:100,
				modes : [ {
					type : "flash",
					src : "/resources/core/js/jwplayer/player.swf"
				}, {
					type : "html5"
				}, {
					type : "download"
				} ]
			});
			</script>
			<h2>IPOHNE</h2>
			<video src="http://211.111.174.25:8866/stream.mp4" controls="controls"></video>
		</div>
	</div>
	
</body>
</html>
