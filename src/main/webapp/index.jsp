<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>MOVIES</title>
<style>
    body{
        background-color: rgb(229,229,200);
        }
    h1{
        color:green;
        text-align:center;
        font-style:italic;
        }
    img{
        border: 1px solid #ddd;
        border-radius: 4px;
        padding: 15px;
        width:200px;
        position:relative;
    }
    table{
        width:80%;
    }
    tr.imgActors{
        float:left;
        width: 100px%;
        height:auto;
       }
     tr.imgMovies{
            float:left;
            width: 100px;
            height:auto;

    </style>
  </head>

  <body>

  <h1>Welcome to the best MOVIES web ever !</h1>


    <p align="right"><a href="login"> ZALOGUJ </a></p>

    <table align="center">
    <tr>
        <th align="left">ACTORS</th>
    </tr>
    <tr class="imgActors">
        <td><img id="kirk" src="img/actors/Douglas.jpg" alt="Kirk Douglas" /></td>
        <td><img src="img/actors/Hepburn.jpg" alt="Audrey Hepburn" /></td>
        <td><img src="img/actors/Brando.jpg" alt="Marlon Brando" /></td>
        <td><img src="img/actors/Monroe.jpg" alt="Marilyn Monroe" /></td>
        <td><img src="img/actors/Gable.jpg" alt="Clark Gable" /></td>
    </tr>
    </table>

    <table align="center">
    <tr>
        <th align="left">MOVIES</th>
    </tr>
    <tr class="imgMovies">
        <td><img src="img/movies/Breakfast at Tiffany's.jpg" alt="Kirk Douglas" /></td>
        <td><img src="img/movies/Champion.jpg" alt="Audrey Hepburn" /></td>
        <td><img src="img/movies/The Godfather.jpg" alt="Marlon Brando" /></td>
        <td><img src="img/movies/The Misfits.jpg" alt="Marilyn Monroe" /></td>
    </tr>
    </table>
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



  </body>
</html>