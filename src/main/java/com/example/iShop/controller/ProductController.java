package com.example.iShop.controller;

import com.example.iShop.models.Product;
import com.example.iShop.models.Reviews;
import com.example.iShop.services.ProductService;
import com.example.iShop.services.ReviewsService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;


@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    private final ReviewsService reviewsService;

    @GetMapping("/")
    public String products(@RequestParam(name = "name", required = false) String name, Principal principal, Model model) {
        model.addAttribute("products", productService.listProduct(name));
        model.addAttribute("user", reviewsService.getUserByPrincipal(principal));
        return "products";
    }

    @GetMapping("/product/{id}")
    public String productInfo(Model model, @PathVariable Long id) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        return "product-info";
    }

    @GetMapping("/feedback")
    public String productFeedback(@RequestParam(name = "feedback", required = false) String feedback, Model model) {
        model.addAttribute("reviews", reviewsService.reviewsList(feedback));
        return "product-feedback";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3, Product product) throws IOException {
        productService.saveProduct(product, file1, file2, file3);
        return "redirect:/";
    }


    @PostMapping("/product/reviews")
    public String createFeedback(Reviews reviews, Principal principal) {
        reviewsService.addFeedback(principal, reviews);
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
