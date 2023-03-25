package com.example.iShop.controller;

import com.example.iShop.models.Product;
import com.example.iShop.models.Reviews;
import com.example.iShop.models.enums.Role;
import com.example.iShop.services.ProductService;
import com.example.iShop.services.ReviewsService;
import com.example.iShop.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    private final ReviewsService reviewsService;
    private final UserService userService;

    @GetMapping("/")
    public String products(@RequestParam(name = "name", required = false) String name,Principal principal, Model model) {
        model.addAttribute("products", productService.listProduct(name));
        model.addAttribute("user", reviewsService.getUserByPrincipal(principal));
        return "products";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getProductById(id));
        return "product-info";
    }

    @GetMapping("/feedback")
    public String productFeedback(@RequestParam(name = "feedback", required = false) String feedback, Model model) {
        model.addAttribute("reviews", reviewsService.reviewsList(feedback));
        return "product-feedback";
    }

    @PostMapping("/product/create")
    public String createProduct(Product product) {
        productService.saveProduct(product);
        return "redirect:/";
    }

    @PostMapping("/product/reviews")
    public String createFeedback(Reviews reviews, Principal principal) {
        reviewsService.addFeedback(principal,reviews);
        return "redirect:/";
    }

    @GetMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }

    @PostMapping("/product/delete-feedback/{id}")
    public String deleteFeedback(@PathVariable Long id) {
        reviewsService.deleteFeedback(id);
        return "redirect:/";
    }
}
