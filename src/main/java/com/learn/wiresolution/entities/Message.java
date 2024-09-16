/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.learn.wiresolution.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;

/**
 *
 * @author Pawan Kumar
 */
@Entity
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    private int userId;
    private String email;
    private String name;
    private String mobile;
    private String message;

    public Message() {
    }

    public Message(int id, int userId, String email, String name, String mobile, String message) {
        this.id = id;
        this.userId = userId;
        this.email = email;
        this.name = name;
        this.mobile = mobile;
        this.message = message;
    }
    
    public Message(String email, String name, String mobile, String message) {
        this.email = email;
        this.name = name;
        this.mobile = mobile;
        this.message = message;
    }

    public Message(int userId, String email, String name, String mobile, String message) {
        this.userId = userId;
        this.email = email;
        this.name = name;
        this.mobile = mobile;
        this.message = message;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
    
}
