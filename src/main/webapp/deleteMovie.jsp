
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
    <div> DELETE  </div>
    <br />
    <div> YOUR MOVIES
     <% int i = 0;
        for(Movies p : user.getFavouriteMovies()){
        String title = p.getTitle();
        i++;%>
        <div> TITLE: <%=i%> <%=title%> </div>
     <% } %>
    </div>
    <div> CHOOSE TITLE NUMBER YOU WANT TO DELETE </div>

        <form type="post" action="movieDeleted">
        <div> Title Number: <input type="tekst" name="titleNumber" value"" /> </div>

        <div> <input type="submit" value="DELETE" /> </div>


  </body>


</html>
