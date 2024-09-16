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
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    private int userId;
    
    private int productId;
    private String name;
    private float price;
    private int quantity;
    private String imageName;

    public Cart() {
    }

    public Cart(int id, int userId, int productId, String name, float price, int quantity, String imageName) {
        this.id = id;
        this.userId = userId;
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.imageName = imageName;
    }
    

    public Cart(int userId, int productId, String name, float price, int quantity, String imageName) {
        this.userId = userId;
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.imageName = imageName;
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

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }
    
    
    
    
}
