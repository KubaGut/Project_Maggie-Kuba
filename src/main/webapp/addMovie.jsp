<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <link rel="stylesheet" href="css/menu.css" type="text/css" />
    <link rel="stylesheet" href="css/addMovie.css" type="text/css" />
    <title>Add Movie</title>
  </head>

  <body>

    <div id="welcome"> PLEASE ADD MOVIE  </div>
    <div id="menu">
                <ol>
                <li><a href="index2">Home</a></li>
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
    <div id="addMovie">
      <form type="post" action="addUser">
        <div> Title: <input type="tekst" name="title" value"" /> </div>
        <div> Director Name: <input type="tekst" name="directorName" value"" /> </div>
        <div> Director Last Name: <input type="tekst" name="directorLastName" value"" /> </div>
        <div> Premiera Date: <input type="tekst" name="premieraDate" value"" /> </div>
        <div> Category: <input type="tekst" name="category" value"" /> </div>
        <div> Place: <input type="tekst" name="place" value"" /> </div>
        <div> Actor Name: <input type="tekst" name="actorName" value"" /> </div>
        <div> Actor Last Name: <input type="tekst" name="actorLastName" value"" /> </div>
        <div> Actor Date of Birth: <input type="tekst" name="actorDateOfBirth" value"" /> </div>
        <div> Actor Plate of Birth: <input type="tekst" name="actorPlaceOfBirth" value"" /> </div>
        <div> Actor Death Place: <input type="tekst" name="actorDeathPlace" value"" /> </div>
        <div> <input type="submit" value="ADD" /> </div>
      </form>
    </div>

  </body>


</html>