/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nguyen Tien Nhat
 */
public class Cart {

    private List<Item> items;

    private Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public int getQuantityByID(String id) {
        return getItemById(id).getQuantity();
    }

    public Item getItemById(String id) {
        for (Item i : items) {
            if (i.getProduct().getProduct_id() == id) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Item t) {
        if (getItemById(t.getProduct().getProduct_id() != null)) {
            Item m = getItemById(t.getProduct().getProduct_id());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(String id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public int getTotalMoney() {
        int t = 0;
        for (Item i : items) {
            t += (i.getQuantity() * i.getPrice());
        }
        return t;
    }

    private Product getProductById(String id, List<Product> list) {
        for (Product i : list) {
            if (i.getProduct_id() == id) {
                return i;
            }
        }
        return null;
    }

    private Cart(String txt, List<Product> list) {
        items = new ArrayList<>();
        try {
            if (txt != null && txt 
                length() != 0
            
                ){
            String[] s = txt.split(",");
                for (String i : s) {
                    String[] n = i.split(":");
                    int id = Integer.parseInt(n[0]);
                    int quantity = Integer.parseInt((n[1]));
                    Product p = getProductById(id, list);
                    Item t = new Item(p, quantity, p.getPrice() * 2);
                    addItem(t);

                }
            }
        } catch (NumberFormatException e) {
                    System.out.println("Error: " + e);
        }
    }

}
