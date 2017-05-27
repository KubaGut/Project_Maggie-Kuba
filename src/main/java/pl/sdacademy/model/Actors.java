package pl.sdacademy.model;

import java.util.ArrayList;

/**
 * Created by RENT on 2017-05-27.
 */
public class Actors {
    private int ID;
    private String name;
    private String lastname;
    private String birthDate;
    private String placeOfBirth;
    private String deathDate;


    public Actors(int ID,
                  String name,
                  String lastname,
                  String birthDate,
                  String placeOfBirth,
                  String deathDate) {
        this.ID = ID;
        this.name = name;
        this.lastname = lastname;
        this.birthDate = birthDate;
        this.placeOfBirth = placeOfBirth;
        this.deathDate = deathDate;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getPlaceOfBirth() {
        return placeOfBirth;
    }

    public void setPlaceOfBirth(String placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
    }

    public String getDeathDate() {
        return deathDate;
    }

    public void setDeathDate(String deathDate) {
        this.deathDate = deathDate;
    }

}
