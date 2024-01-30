
package com.learn.wiresolution.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author Pawan Kumar
 */
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="product_id")
    private int pId;
    @Column(name="product_name")
    private String pName;
    @Column(name="product_brand")
    private String pBrand;
    @Column(name="product_brand")
    private String pModal;
    @Column(name="price")
    private int pPrice;
    @Column(name="discount")
    private int pDiscount;
    @Column(name="quantity")
    private int pQuantity;
    @Column(name="picture")
    private String pPicture;
    @Column(name="description")
    private String pDesc;
    
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_category_id")
    private Category category;
    
    public Product(){
        
    }

    public Product(int pId, String pName, String pBrand, String pModal, int pPrice, int pDiscount, int pQuantity, String pPicture, String pDesc, Category category) {
        this.pId = pId;
        this.pName = pName;
        this.pBrand = pBrand;
        this.pModal = pModal;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
        this.pPicture = pPicture;
        this.pDesc = pDesc;
        this.category = category;
    }

    public Product(String pName, String pBrand, String pModal, int pPrice, int pDiscount, int pQuantity, String pPicture, String pDesc, Category category) {
        this.pName = pName;
        this.pBrand = pBrand;
        this.pModal = pModal;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
        this.pPicture = pPicture;
        this.pDesc = pDesc;
        this.category = category;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpBrand() {
        return pBrand;
    }

    public void setpBrand(String pBrand) {
        this.pBrand = pBrand;
    }

    public String getpModal() {
        return pModal;
    }

    public void setpModal(String pModal) {
        this.pModal = pModal;
    }

    public int getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }

    public int getpDiscount() {
        return pDiscount;
    }

    public void setpDiscount(int pDiscount) {
        this.pDiscount = pDiscount;
    }

    public int getpQuantity() {
        return pQuantity;
    }

    public void setpQuantity(int pQuantity) {
        this.pQuantity = pQuantity;
    }

    public String getpPicture() {
        return pPicture;
    }

    public void setpPicture(String pPicture) {
        this.pPicture = pPicture;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
    
}
