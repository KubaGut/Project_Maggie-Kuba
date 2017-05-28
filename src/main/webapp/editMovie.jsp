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
    <div> EDIT  </div>
    <br />
    <div> YOUR MOVIES
     <% int i = 0;
        for(Movies p : user.getFavouriteMovies()){
        String title = p.getTitle();
        i++;%>
        <div> TITLE: <%=i%> <%=title%> </div>
     <% } %>
    </div>
    <div> CHOOSE TITLE NUMBER YOU WANT TO EDIT </div>

        <form type="post" action="editMovie">
        <div> Title Number: <input type="tekst" name="titleNumber" value"" /> </div>

    <div> <input type="submit" value="EDIT" /> </div>
    <% request.setParameter("MovieNumber", request.getParameter("titleNumber") ); %>

            <form type="post" action="editMovieServlet">
            <div> Title: <input type="tekst" name="title" value"<%=user.getFavouriteMovies().get(Integer.parseInt( request.getParameter("titleNumber")) -1).getTitle();%>" /> </div>
            <div> Director Name: <input type="tekst" name="directorName" value"<%=user.getFavouriteMovies().get(Integer.parseInt( request.getParameter("titleNumber")) -1).getName();%>" /> </div>
            <div> Director Last Name: <input type="tekst" name="directorLastName" value"<%=user.getFavouriteMovies().get(Integer.parseInt( request.getParameter("titleNumber")) -1).getLastName();%>" /> </div>
            <div> Premiera Date: <input type="tekst" name="premieraDate" value"<%=user.getFavouriteMovies().get(Integer.parseInt( request.getParameter("titleNumber")) -1).getpremiereDate();%>" /> </div>
            <div> Category: <input type="tekst" name="category" value"<%=user.getFavouriteMovies().get(Integer.parseInt( request.getParameter("titleNumber")) -1).getCategory();%>" /> </div>
            <div> Place: <input type="tekst" name="place" value"<%=user.getFavouriteMovies().get(Integer.parseInt( request.getParameter("titleNumber")) -1).getPlace();%>" /> </div>
            <div> Actor Name: <input type="tekst" name="actorName" value"" /> </div>
            <div> Actor Last Name: <input type="tekst" name="actorLastName" value"" /> </div>
            <div> Actor Date of Birth: <input type="tekst" name="actorDateOfBirth" value"" /> </div>
            <div> Actor Plate of Birth: <input type="tekst" name="actorPlaceOfBirth" value"" /> </div>
            <div> Actor Death Place: <input type="tekst" name="actorDeathPlace" value"" /> </div>


            <div> <input type="submit" value="SUBMIT" /> </div>


  </body>


</html>
