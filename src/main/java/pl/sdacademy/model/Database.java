package pl.sdacademy.model;

import java.util.ArrayList;

/**
 * Created by RENT on 2017-05-27.
 */
public class Database {

    public void createDatabase() {
        ArrayList<Actors> breakfastActors = new ArrayList<Actors>();
        ArrayList<Actors> championActors = new ArrayList<Actors>();
        ArrayList<Actors> misfitActors = new ArrayList<Actors>();
        ArrayList<Actors> godfatherActors = new ArrayList<Actors>();

        ArrayList<Movies> marlonMovies  = new ArrayList<Movies>();
        ArrayList<Movies> marilynMovies  = new ArrayList<Movies>();
        ArrayList<Movies> clarkMovies  = new ArrayList<Movies>();
        ArrayList<Movies> kirkMovies  = new ArrayList<Movies>();
        ArrayList<Movies> audreyMovies  = new ArrayList<Movies>();


        Actors actor1 = new Actors(1, "Marlon", "Brando", "1924-04-03",
                "Omaha, Nebraska, USA", "2004-07-01",marlonMovies);
        Actors actor2 = new Actors(2, "Marylin", "Monroe", "1926-01-07",
                "Los Angeles, Kalifornia, USA", "1962-08-05", marilynMovies);
        Actors actor3 = new Actors(3, "Clark", "Gable", "1901-02-01",
                "Cadiz, Ohio, USA", "1960-11-16",clarkMovies);
        Actors actor4 = new Actors(4, "Kirk", "Douglas", "1916-12-09",
                "Amsterdam, Nowy Jork, USA", "still alive",kirkMovies);
        Actors actor5 = new Actors(5, "Audrey", "Hepburn", "1929-05-04",
                "\tElsene, Belgia", "1993-01-20",audreyMovies);



        Movies movie1 = new Movies(1, "Breakfast at Tiffany's", "Blake", "Edwards",
                "1961-10-05", "melodrama", "USA", breakfastActors);
        Movies movie2 = new Movies(2, "Champion", "Mark", "Robson",
                "1949-04-09", "drama", "USA", championActors);
        Movies movie3 = new Movies(3, "The Misfits", "John", "Huston",
                "1961-02-01", "drama", "USA", misfitActors);
        Movies movie4 = new Movies(4, "The Godfather", "Mario", "Ford Copolla",
                "1972-12-31", "gangster", "USA", godfatherActors);

        marlonMovies.add(movie4);
        marilynMovies.add(movie3);
        clarkMovies.add(movie3);
        kirkMovies.add(movie2);
        audreyMovies.add(movie1);

        breakfastActors.add(actor5);
        championActors.add(actor4);
        misfitActors.add(actor2);
        misfitActors.add(actor3);
        godfatherActors.add(actor1);
    }
}
