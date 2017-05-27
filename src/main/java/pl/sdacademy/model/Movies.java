package pl.sdacademy.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 * Created by RENT on 2017-05-27.
 */
public class Movies {
    private int ID;
    private String title;
    private String directorName;
    private String directorLastname;
    private String premiereDate;
    private String category;
    private String place;
    private ArrayList<Actors> actors;

    String datePattern = "2011-01-18";
    SimpleDateFormat simpledateformat = new SimpleDateFormat(datePattern);


    public Movies(int ID,
                  String title,
                  String directorName,
                  String directorLastname,
                  String premiereDate,
                  String category,
                  String place,
                  ArrayList<Actors> actors) {
        this.ID = ID;
        this.title = title;
        this.directorName = directorName;
        this.directorLastname = directorLastname;
        this.premiereDate = premiereDate;
        this.category = category;
        this.place = place;
        this.actors = actors;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDirectorName() {
        return directorName;
    }

    public void setDirectorName(String directorName) {
        this.directorName = directorName;
    }

    public String getDirectorLastname() {
        return directorLastname;
    }

    public void setDirectorLastname(String directorLastname) {
        this.directorLastname = directorLastname;
    }

    public String getPremiereDate() {
        return premiereDate;
    }

    public void setPremiereDate(String premiereDate) {
        this.premiereDate = premiereDate;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public ArrayList<Actors> getActors() {
        return actors;
    }

    public void setActors(ArrayList<Actors> actors) {
        this.actors = actors;
    }
}
