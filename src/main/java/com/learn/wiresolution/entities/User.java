
package com.learn.wiresolution.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Pawan Kumar
 */
@Entity
public class User {
    @Id
    private int id;
    private String name;

    public User(int id, String name) {
        this.id = id;
        this.name = name;
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
    
    
}
