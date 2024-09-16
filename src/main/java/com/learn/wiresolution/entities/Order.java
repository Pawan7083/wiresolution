/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.learn.wiresolution.entities;

import java.util.Date;
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
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    private int userId;
    private String name;
    private int number;
    private String address;
    private String method;
    private int totalProduct;
    private Date date;
    private String paymentStatus;

    public Order() {
    }

    public Order(int id, int userId, String name, int number, String address, String method, int totalProduct, Date date, String paymentStatus) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.number = number;
        this.address = address;
        this.method = method;
        this.totalProduct = totalProduct;
        this.date = date;
        this.paymentStatus = paymentStatus;
    }
    
    
    public Order(int userId, String name, int number, String address, String method, int totalProduct, Date date, String paymentStatus) {
        this.userId = userId;
        this.name = name;
        this.number = number;
        this.address = address;
        this.method = method;
        this.totalProduct = totalProduct;
        this.date = date;
        this.paymentStatus = paymentStatus;
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

    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public int getTotalProduct() {
        return totalProduct;
    }

    public void setTotalProduct(int totalProduct) {
        this.totalProduct = totalProduct;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }
    
    
    
}
