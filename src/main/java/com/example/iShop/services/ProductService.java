package com.example.iShop.services;

import com.example.iShop.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID=0;

    {
        products.add(new Product(++ID,"fsdfs","fsfsf","fdsfs",22,1,"no","qqqq","w", "sdsds",10));
        products.add(new Product(++ID,"fsdfs","fsfsf","fdsfs",22,1,"no","qqqq","w", "sdsds",10));
    }
    public List<Product> listProduct() {
        return products;
    }
    public void saveProduct(Product product){
        product.setId(++ID);
        products.add(product);
    }
    public void deleteProduct(Long id){
        products.removeIf(product -> product.getId().equals(id));
    }
}
