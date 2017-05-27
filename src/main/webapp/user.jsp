<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="pl.sdacademy.model.Users" %>
<%@ page import="pl.sdacademy.model.Movies" %>
<%@ page import="pl.sdacademy.model.Actors" %>


<html>
  <head>
  </head>

  <body>
    <% Users user = (Users) session.getAttribute("user");
       String login = user != null ? user.getLogin() : "Not logged";
    %>
    <div> WELCOME  <%=login%>  </div>
    <br />
    <div> YOUR ADDED MOVIES
    <% for(Movies p : user.getFavouriteMovies()){
      String title = p.getTitle(); %>
      <div> TITLE:  <%=title%> </div>
     <% } %>
    </div>
    <br />
    <div> YOUR ADDED ACTORS
        <% for(Actors p : user.getFavouriteActors()){
          String name = p.getName(); %>
          <div> Name:  <%=name%> </div>
         <% } %>
     </div>

     <a href="addMovie"> ADD MOVIE </a>


  </body>


</html>