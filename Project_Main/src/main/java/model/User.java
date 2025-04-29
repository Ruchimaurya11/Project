package model;

public class User {
    private int id;
    private String name;

    // Default Constructor
    public User() {
    }

    // Getter for id
    public int getId() {
        return id;
    }

    // Setter for id
    public void setId(int id) {
        this.id = id;
    }

    // Getter for name
    public String getName() {
        return name;
    }

    // Setter for name
    public void setName(String name) {
        this.name = name;
    }

    // toString Method
    @Override
    public String toString() {
        return "User{id=" + id + ", name='" + name + "'}";
    }
}
