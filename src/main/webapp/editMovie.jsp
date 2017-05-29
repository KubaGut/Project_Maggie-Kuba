<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="pl.sdacademy.model.Users" %>
<%@ page import="pl.sdacademy.model.Movies" %>
<%@ page import="pl.sdacademy.model.Actors" %>


<html>
  <head>
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <link rel="stylesheet" href="css/menu.css" type="text/css" />
    <link rel="stylesheet" href="css/edit.css" type="text/css" />
  </head>

  <body>
    <% Users user = (Users) session.getAttribute("user");
       String login = user != null ? user.getLogin() : "Not logged";
    %>
    <div id="welcome">MODIFY MOVIE</div>
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
    <br />
  
    <div id="editMovie"> YOUR MOVIES
     <% int i = 0;
        for(Movies p : user.getFavouriteMovies()){
        String title = p.getTitle();
        i++;%>
        <div> <%=i%> <%=title%> </div>
     <% } %>
    <div> CHOOSE TITLE NUMBER YOU WANT TO EDIT </div>
    </div>
        <form type="post" action="editMovie">
        <div> Title Number: <input type="tekst" name="titleNumber" value"" /> </div>

        <div> <input class="button" type="submit" value="EDIT" /> </div>
        </form>

         <% if (request.getParameter("titleNumber") != null) {
         int numberOfTitle = Integer.parseInt(request.getParameter("titleNumber")); %>

            <form type="post" action="editMovieServlet">
            <input type="hidden" name="MovieNumber" value="<%=(numberOfTitle-1)%>"/></div>
            <div> Title: <input type="tekst" name="title" value="<%=user.getFavouriteMovies().get(numberOfTitle -1).getTitle()%>" /> </div>
            <div> Director Name: <input type="tekst" name="directorName" value="<%=user.getFavouriteMovies().get(numberOfTitle -1).getDirectorName()%>" /> </div>
            <div> Director Last Name: <input type="tekst" name="directorLastName" value="<%=user.getFavouriteMovies().get(numberOfTitle -1).getDirectorLastname()%>" /> </div>
            <div> Premiera Date: <input type="tekst" name="premieraDate" value="<%=user.getFavouriteMovies().get(numberOfTitle -1).getPremiereDate()%>" /> </div>
            <div> Category: <input type="tekst" name="category" value="<%=user.getFavouriteMovies().get(numberOfTitle -1).getCategory()%>" /> </div>
            <div> Place: <input type="tekst" name="place" value="<%=user.getFavouriteMovies().get(numberOfTitle -1).getPlace()%>" /> </div>
            <div> Actor Name: <input type="tekst" name="actorName" value="" /> </div>
            <div> Actor Last Name: <input type="tekst" name="actorLastName" value="" /> </div>
            <div> Actor Date of Birth: <input type="tekst" name="actorDateOfBirth" value="" /> </div>
            <div> Actor Plate of Birth: <input type="tekst" name="actorPlaceOfBirth" value="" /> </div>
            <div> Actor Death Place: <input type="tekst" name="actorDeathPlace" value="" /> </div>

          <% } %>
          <div> <input type="submit" value="SUBMIT" /> </div>
                      </form>
        <div>
        <div id="footer">Thanks for being with us !  @All rights reserved </div>
    </div>
  </body>


</html>
