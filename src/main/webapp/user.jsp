<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="pl.sdacademy.model.Users" %>
<%@ page import="pl.sdacademy.model.Movies" %>
<%@ page import="pl.sdacademy.model.Actors" %>


<html>
  <head>
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <link rel="stylesheet" href="css/menu.css" type="text/css" />
    <link rel="stylesheet" href="css/user.css" type="text/css"  />
  </head>

  <body>
    <% Users user = (Users) session.getAttribute("user");
       String login = user != null ? user.getLogin() : "Not logged";
    %>
    <div id="container">
      <div id="welcome">WELCOME,  <%=login.toUpperCase() %> </div>
    
      <div id="menu">
                <ol>
                <li><a href="/Project_Maggie_Kuba/index2">Home</a></li>
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

    <div id="favActors">Favourite Actors
        <% for(Actors p : user.getFavouriteActors()){
          String name = p.getName(); %>
          <div class="favActors"><%=name%></div>
         <% } %>
     </div>
     </div>
    <div> YOUR ADDED MOVIES
    <% for(Movies p : user.getFavouriteMovies()){
      String title = p.getTitle(); %>
      <div> TITLE:  <%=title%> </div>
     <% } %>
    </div>
    <br />
    

     <a href="addMovie"> ADD MOVIE </a>
     <br />
     <a href="deleteMovie"> DELETE MOVIE </a>
     <br />
     <a href="editMovie"> EDIT MOVIE </a>


  </body>


</html>
