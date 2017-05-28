<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
  <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Lato|Open+Sans" rel="stylesheet">
    <title>MOVIES</title>
<style>


    </style>
  </head>

<body>
    <div id="container">
        <div id="welcome">Welcome to the best Movie's web</div>
        <div id="menu">
            <ol>
            <li><a href="login">Login</a></li>
            <li><a href=""> My accout</a></li>
            <li><a href="">Actors</a></li>
            <li><a href="">Movies</a></li>
            <li><a href=""> About</a></li>
            </ol>
        </div>
        <div id="actorsNew">
            <header align="left">ACTORS</header>
            <div class="photo">
                <img class="act" src="img/actors/Douglas.jpg" alt="Kirk Douglas" />
                <div class="describe">AAAAAA</div>
            </div>
            <div class="photo"> 
                <img class="act" src="img/actors/Hepburn.jpg" alt="Audrey Hepburn" />
                <div class="describe">AAAAAA</div>
            </div>
            <div class="photo"> 
                <img class="act" src="img/actors/Brando.jpg" alt="Marlon Brando" />
                <div class="describe">AAAAAA</div>
            </div>
            <div class="photo"> 
                <img class="act" src="img/actors/Monroe.jpg" alt="Marilyn Monroe" /></div>
                <div class="describe">AAAAAA</div>
            <div class="photo"> 
                <img class="act" src="img/actors/Gable.jpg" alt="Clark Gable" /></div>
                <div class="describe">AAAAAA</div>
        </div>

        <div id="movies">
            <table align="center">
        <tr>
        <th align="left">MOVIES</th>
        </tr>
        <tr class="imgMovies">
        <td><img src="img/movies/Breakfast at Tiffany's.jpg" alt="Kirk Douglas" /></td>
        <td><img src="img/movies/Champion.jpg" alt="Audrey Hepburn" /></td>
        <td><img src="img/movies/The Godfather.jpg" alt="Marlon Brando" /></td>
        <td><img src="img/movies/The Misfits.jpg" alt="Marilyn Monroe" /></td>
        </tr>
        </table>
        </div>

    <div id="check">
    <button onclick="displayDate()">Try it</button>

    <script>
    document.getElementById("myBtn").addEventListener("click", displayDate);

    function myFunction(){
    document.getElementById("kirk").style.zIndex= "-1";
    }
    function displayDate() {
    document.getElementById("kirk").innerHTML = Date();
     }
    </script>
<script scr="jquery-3.2.1.min.js"></script>
	
<script>

	$(document).ready(function() {
	var NavY = $('#menu').offset().top;
	 
	var stickyNav = function(){
	var ScrollY = $(window).scrollTop();
		  
	if (ScrollY > NavY) { 
		$('#menu').addClass('sticky');
	} else {
		$('#menu').removeClass('sticky');
	}
	};
	 
	stickyNav();
	 
	$(window).scroll(function() {
		stickyNav();
	});
	});
	
</script>

    </div>
    <div id="footer">Thanks for being with us !  @All rights reserved </div>
    </div>


</body>
</html>