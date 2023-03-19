package com.example.iShop.models;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {
    private Long id;
    private String name;
    private String description;
    private String organization;
    private  int price;
    private int quantityStorage;
    private String discountInformation;
    private String comments;
    private String keyWords;
    private String characteristicsTable;
    private int score;
}
