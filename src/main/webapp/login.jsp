<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <link rel="stylesheet" href="css/menu.css" type="text/css" />
    <link rel="stylesheet" href="css/loginCss.css" type="text/css" />
    <title> WELCOME </title>
  </head>

  <body>
     <div id="menu">
                <ol>
                <li><a href="/Project_Maggie_Kuba/">Home</a></li>
                <li><a href="login">Login</a></li>
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
    <div class="loginContainer">
      <form type="post" action="user">
        <input type="text" name="Login" value"" placeholder="login" onfocus="this.placeholder=''" onblur="this.placeholder='login'"/>
        <input type="password" name="Password" value"" placeholder="password"onfocus="this.placeholder=''" onblur="this.placeholder='password'"/>
        <input type="submit" value="LOG IN" />
      </form>
    </div>

    <% if( (request.getAttribute("wrong")) != null) { %>
    <div style="text-align:center;color:red;"> Wrong login or password!!  <br />
     Please, try again. </div>
    <% } %>
<div>
        <div id="footer">Thanks for being with us !  @All rights reserved </div>
    </div>
  </body>


</html>