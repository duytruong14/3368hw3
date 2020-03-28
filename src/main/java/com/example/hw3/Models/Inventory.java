package com.example.hw3.Models;

import javax.persistence.*;
@Entity
@Table(name = "inventory")
public class Inventory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int id;
    @Column(name = "Description")
    public String description;
    @Column(name = "Price")
    public float price;
    @Column(name = "Color")
    public String color;

public Inventory(){}
    public Inventory(String description, float price,String color) {
        this.description = description;
        this.price = price;
        this.color=color;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
//final check
}