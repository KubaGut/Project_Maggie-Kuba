<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="pl.sdacademy.model.Database" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pl.sdacademy.model.Users" %>
<%@ page import="pl.sdacademy.model.Movies" %>
<%@ page import="pl.sdacademy.model.Actors" %>


<html>
    <head>
        <link rel="stylesheet" href="css/home.css" type="text/css" />
        <link rel="stylesheet" href="css/menu.css" type="text/css" />
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
   <!-- <link href="https://fonts.googleapis.com/css?family=Lato|Open+Sans" rel="stylesheet"> -->
        <title>MOVIES</title>
    </head>

    <body>
    <div id="container">
        <div id="welcome">Welcome to the best Movie's web</div>
        <div id="menu">
            <ol>
            <li><a href="/Project_Maggie_Kuba/">Home</a></li>
            <li><a href="login">Login</a></li>
            <li><a href="#">My accout</a></li>
            <li><a href="#">Actors</a>
                <ul>
                <% Database baza = (Database) session.getAttribute("baza");
                 for (Users user : baza.getUsers()) {
                    for(Actors p : user.getFavouriteActors()){
                           String name = p.getName(); %>
                           <li><a href="#"><%=name%></a></li>
                           <div class="favActors"><%=name%></div>
                          <% }} %>
                      </div>
                </ul>
            <li><a href="#">Movies</a>
                <ul>
                    <li><a href="#">Breakfast at Tiffany's </a></li>
                    <li><a href="#">Champion</a></li>
                    <li><a href="#">The Godfather</a></li>
                    <li><a href="#">The Misfits</a></li>
                </ul></li>
            <li><a href="">About</a></li>
            </ol>
        </div>
        <div id="actors">
        <table align="center">
            <tr>
                <th align="left">ACTORS</th>
            </tr>
            <tr class="imgActors">
                <td class="columnAct">
                    <img id="kirk" src="img/actors/Douglas.jpg" alt="Kirk Douglas" />
                    <div class="description"><% out.println("movie1"); %></div>
                </td>
                <td class="columnAct">
                    <img src="img/actors/Hepburn.jpg" alt="Audrey Hepburn" />
                    <div class="description">AAAAAA</div>
                </td>
                <td class="columnAct">
                    <img src="img/actors/Brando.jpg" alt="Marlon Brando" />
                    <div class="description">AAAAAA</div>
                </td>
                <td class="columnAct">
                    <img src="img/actors/Monroe.jpg" alt="Marilyn Monroe" />
                    <div class="description">AAAAAA</div>
                </td>
                <td class="columnAct">
                    <img src="img/actors/Gable.jpg" alt="Clark Gable" />
                    <div class="description">AAAAAA</div>
                </td>
                </tr>
            </table>
        </div>

        <div id="movies">
            <table align="center">
                <td>
                    <th align="left">MOVIES</th>
                </tr>
                <tr>
                    <td class="columnMovies">
                        <img src="img/movies/Breakfast at Tiffany's.jpg" alt="Breakfast at Tiffany's" />
                        <div class="description">AAAAAA</div>
                    </td>
                    <td class="columnMovies">
                        <img src="img/movies/Champion.jpg" alt="Champion" />
                        <div class="description">AAAAAA</div>
                        </td>
                    <td class="columnMovies">
                        <img src="img/movies/The Godfather.jpg" alt="The Godfather" />
                        <div class="description">AAAAAA</div>
                    </td>
                    <td class="columnMovies">
                        <img src="img/movies/The Misfits.jpg" alt="The Misfits" />
                        <div class="description">AAAAAA</div>
                    </td>
                </tr>
            </table>
        </div>
    <!--<div id="check">
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
</script>-->
    <div>
        <div id="footer">Thanks for being with us !  @All rights reserved </div>
    </div>
    </div>
    </body>
</html>