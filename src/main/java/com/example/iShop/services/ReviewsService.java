package com.example.iShop.services;

import com.example.iShop.models.Reviews;
import com.example.iShop.models.User;
import com.example.iShop.repoitories.ReviewsRepository;
import com.example.iShop.repoitories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ReviewsService {
    private final ReviewsRepository reviewsRepository;
    private final UserRepository userRepository;

    public List<Reviews> reviewsList(String feedback) {
        if (feedback != null) return reviewsRepository.findByFeedback(feedback);
        return reviewsRepository.findAll();
    }

    public void addFeedback(Reviews reviews) {
        log.info("save new {}", reviews);
        reviewsRepository.save(reviews);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public void deleteFeedback(Long id) {
        reviewsRepository.deleteById(id);
    }

    public Reviews getFeedbackById(Long id) {
        return reviewsRepository.findById(id).orElse(null);
    }

}
