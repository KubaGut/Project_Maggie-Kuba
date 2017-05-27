<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title> WELCOME </title>
  </head>

  <body>

    <div> PLEASE LOG ON </div>

    <form type="post" action="user">
    <div> LOGIN: <input type="tekst" name="Login" value"" /> </div>
    <div> HASLO: <input type="password" name="Password" value"" /> </div>
    <div> <input type="submit" value="LOG IN" /> </div>
    </form>

    <% if( (request.getAttribute("wrong")) != null) { %>
    <div> WRONG LOGIN or PASSWORD !!  </div>
    <div> PLEASE TRY AGAIN </div>
    <% } %>

  </body>


</html>