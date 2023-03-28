package com.example.iShop.repoitories;

import com.example.iShop.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImagesRepository extends JpaRepository<Image, Long> {

}
