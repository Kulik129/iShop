package com.example.iShop.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "products")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "organization")
    private String organization;
    @Column(name = "price")
    private  int price;
    @Column(name = "quantityStorage")
    private int quantityStorage;
    @Column(name = "discountInformation")
    private String discountInformation;
//    @Column(name = "comments")
//    private String comments;
    @Column(name = "keyWords")
    private String keyWords;
    @Column(name = "characteristicsTable")
    private String characteristicsTable;
//    @Column(name = "score")
//    private int score;
}
