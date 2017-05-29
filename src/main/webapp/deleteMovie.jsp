
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="pl.sdacademy.model.Users" %>
<%@ page import="pl.sdacademy.model.Movies" %>
<%@ page import="pl.sdacademy.model.Actors" %>


<html>
  <head>
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <link rel="stylesheet" href="css/menu.css" type="text/css" />
    <link rel="stylesheet" href="css/delete.css" type="text/css" />
    <title>Delet Movie</title>
  </head>

  <body>
    <% Users user = (Users) session.getAttribute("user");
       String login = user != null ? user.getLogin() : "Not logged";
    %>
    <div id="welcome"> DELETE  </div>
    <div id="menu">
                <ol>
                <li><a href="/Project_Maggie_Kuba/">Home</a></li>
                <li><a href="#">My accout</a></li>
                <li><a href="#">Actors</a>
                    <ul>
                        <li><a href="#">Kirk Douglas</a></li>
                        <li><a href="#">Audrey Hepburn</a></li>
                        <li><a href="#">Marlon Brando</a></li>
                        <li><a href="#">Marilyn Monroe</a></li>
                        <li><a href="#">Clark Gable</a></li>
                    </ul></li>
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

   
    <div id="deleteMovie"> YOUR MOVIES
     <% int i = 0;
        for(Movies p : user.getFavouriteMovies()){
        String title = p.getTitle();
        i++;%>
        <div> <%=i%> <%=title%> </div>
     <% } %>
    </div>
    <div> CHOOSE TITLE NUMBER YOU WANT TO DELETE </div>

        <form type="post" action="movieDeleted">
        <div> Title Number: <input type="tekst" name="titleNumber" value"" /> </div>

        <div> <input class="button" type="submit" value="DELETE" /> </div>


  </body>


</html>
