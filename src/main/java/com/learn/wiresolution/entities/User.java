
package com.learn.wiresolution.entities;

//import jakarta.persistence.Entity;

//import jakarta.persistence.GenerationType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//import jakarta.persistence.Id;



/**
 *
 * @author Pawan Kumar
 */
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private int id;
    private String name;
    @Column(unique=true)
    private String userEmail;
    private String userPassword;
    private String userType;
    private String address;
    private String image;
    public User(int id, String name,String userEmail,String userPassword, String userType) {
        this.id = id;
        this.name = name;
        this.userEmail=userEmail;
        this.userPassword=userPassword;
        this.userType=userType;
    }

    public User(int id, String name, String userEmail, String userPassword, String userType, String address, String image) {
        this.id = id;
        this.name = name;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userType = userType;
        this.address = address;
        this.image = image;
    }
    
    public User() {
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    
    
}
