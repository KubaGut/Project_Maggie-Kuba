
package pl.sdacademy.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class Database {

    List<Users> users = new ArrayList<Users>();

    public List<Users> getUsers() {
        return users;
    }

    public void createDatabase() {
        ArrayList<Actors> breakfastActors = new ArrayList<Actors>();
        ArrayList<Actors> championActors = new ArrayList<Actors>();
        ArrayList<Actors> misfitActors = new ArrayList<Actors>();
        ArrayList<Actors> godfatherActors = new ArrayList<Actors>();

        Actors actor1 = new Actors(1, "Marlon", "Brando", "1924-04-03",
                "Omaha, Nebraska, USA", "2004-07-01");
        Actors actor2 = new Actors(2, "Marylin", "Monroe", "1926-01-07",
                "Los Angeles, Kalifornia, USA", "1962-08-05");
        Actors actor3 = new Actors(3, "Clark", "Gable", "1901-02-01",
                "Cadiz, Ohio, USA", "1960-11-16");
        Actors actor4 = new Actors(4, "Kirk", "Douglas", "1916-12-09",
                "Amsterdam, Nowy Jork, USA", "still alive");
        Actors actor5 = new Actors(5, "Audrey", "Hepburn", "1929-05-04",
                "\tElsene, Belgia", "1993-01-20");



        Movies movie1 = new Movies(1, "Breakfast at Tiffany's", "Blake", "Edwards",
                "1961-10-05", "melodrama", "USA", breakfastActors);
        Movies movie2 = new Movies(2, "Champion", "Mark", "Robson",
                "1949-04-09", "drama", "USA", championActors);
        Movies movie3 = new Movies(3, "The Misfits", "John", "Huston",
                "1961-02-01", "drama", "USA", misfitActors);
        Movies movie4 = new Movies(4, "The Godfather", "Mario", "Ford Copolla",
                "1972-12-31", "gangster", "USA", godfatherActors);


        breakfastActors.add(actor5);
        championActors.add(actor4);
        misfitActors.add(actor2);
        misfitActors.add(actor3);
        godfatherActors.add(actor1);

        ArrayList<Movies> kubaMovies  = new ArrayList<Movies>();
        ArrayList<Actors> kubaActors  = new ArrayList<Actors>();
        ArrayList<Movies> gosiaMovies  = new ArrayList<Movies>();
        ArrayList<Actors> gosiaActors  = new ArrayList<Actors>();

        kubaMovies.add(movie1);
        kubaMovies.add(movie2);
        kubaActors.add(actor1);
        gosiaMovies.add(movie3);
        gosiaMovies.add(movie4);
        gosiaActors.add(actor2);

        Users kuba = new Users(1, "kuba", "kuba", kubaActors, kubaMovies);
        Users gosia = new Users(2, "gosia", "gosia", gosiaActors, gosiaMovies);


        users.add(kuba);
        users.add(gosia);

    }
    public void addMovie(String title, String directorName, String directorLastName, String premiraDate, String category,
                         String place, String actorName, String actorLastName, String actorDateOfBirth,
                         String actorPlaceOfBirth, String actorDeathPlace, Users user){
        ArrayList<Actors> actor = new ArrayList<Actors>();
        actor.add(new Actors(0, actorName, actorLastName, actorDateOfBirth, actorPlaceOfBirth,
                actorDeathPlace));
        Movies movie = new Movies(getUsers().size(),title, directorName, directorLastName, premiraDate,category,
                place, actor );

        users.get(users.indexOf(user)).getFavouriteMovies().add(movie);

    }
    public void deleteMovie(int titleNumber, Users user){
        users.get(users.indexOf(user)).getFavouriteMovies().remove(titleNumber);
    }
    public void editMovie(String title, String directorName, String directorLastName, String premiraDate, String category,
                         String place, String actorName, String actorLastName, String actorDateOfBirth,
                         String actorPlaceOfBirth, String actorDeathPlace, Users user, int i){
        ArrayList<Actors> actor = new ArrayList<Actors>();
        actor.add(new Actors(0, actorName, actorLastName, actorDateOfBirth, actorPlaceOfBirth,
                actorDeathPlace));
        Movies movie = new Movies(getUsers().size(),title, directorName, directorLastName, premiraDate,category,
                place, actor );

        users.get(users.indexOf(user)).getFavouriteMovies().remove(i);
        users.get(users.indexOf(user)).getFavouriteMovies().add(i, movie);

    }
}

