package com.example.iShop.repoitories;

import com.example.iShop.models.Reviews;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewsRepository extends JpaRepository<Reviews, Long> {
    List<Reviews> findByFeedback(String feedback);
}
