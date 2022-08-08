/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Nguyen Tien Nhat
 */
public class Product {
    private String product_id;
    private String product_name;
    private String price;
    private String quantity;
    private String cattegory_id;
    private String image;
    private String description;

    public Product() {
    }

    public Product(String product_id, String product_name, String price, String quantity, String cattegory_id, String image, String description) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.price = price;
        this.quantity = quantity;
        this.cattegory_id = cattegory_id;
        this.image = image;
        this.description = description;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getCattegory_id() {
        return cattegory_id;
    }

    public void setCattegory_id(String cattegory_id) {
        this.cattegory_id = cattegory_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

   

    @Override
    public String toString() {
        return "Product{" + "product_id=" + product_id + ", product_name=" + product_name + ", price=" + price + ", quantity=" + quantity + ", cattegory_id=" + cattegory_id + ", image=" + image + ", description=" + description + '}';
    }

    
    
    
}
