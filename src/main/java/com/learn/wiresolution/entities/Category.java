/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.learn.wiresolution.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Pawan Kumar
 */
@Entity
public class Category {
    @Id
    @GeneratedValue(strategy =GenerationType.IDENTITY)
    @Column(name="category_id")
    private int cId;
    @Column(name="category_name" , unique=true,length=50 )
    private String cName;
    @Column (name="category_description")
    private String cDesc;
    
    public Category(){
        
    }
    public Category(int cId,String cName, String cDesc){
        this.cId=cId;
        this.cName=cName;
        this.cDesc=cDesc;
    }
    public Category(String cName, String cDesc){
        this.cName=cName;
        this.cDesc=cDesc;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getcDesc() {
        return cDesc;
    }

    public void setcDesc(String cDesc) {
        this.cDesc = cDesc;
    }
    
}
