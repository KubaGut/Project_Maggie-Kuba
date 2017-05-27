package pl.sdacademy.model;

import java.util.ArrayList;

/**
 * Created by RENT on 2017-05-27.
 */
public class Users {
        private int ID;
        private String login;
        private String password;
        private ArrayList<Actors> favouriteActors;
        private ArrayList<Movies> favouriteMovies;


        public Users(int ID,
                     String login,
                     String password,
                     ArrayList<Actors> favouriteActors,
                     ArrayList<Movies> favouriteMovies) {
            this.ID = ID;
            this.login = login;
            this.password = password;
            this.favouriteActors = favouriteActors;
            this.favouriteMovies = favouriteMovies;
        }

        public int getID() {
            return ID;
        }

        public void setID(int ID) {
            this.ID = ID;
        }

        public String getLogin() {
            return login;
        }

        public void setLogin(String login) {
            this.login = login;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public ArrayList<Actors> getFavouriteActors() {
            return favouriteActors;
        }

        public void setFavouriteActors(ArrayList<Actors> favouriteActors) {
            this.favouriteActors = favouriteActors;
        }

        public ArrayList<Movies> getFavouriteMovies() {
            return favouriteMovies;
        }

        public void setFavouriteMovies(ArrayList<Movies> favouriteMovies) {
            this.favouriteMovies = favouriteMovies;
        }
}
