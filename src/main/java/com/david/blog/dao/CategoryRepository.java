package com.david.blog.dao;

import com.david.blog.entity.po.Category;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author LiJiYang
 * @date 2022/2/16 10:58
 */
public interface CategoryRepository extends JpaRepository<Category, Long> {
    List<Category> findByName(String name);

    @Query("select c from Category c")
    List<Category> findTop(Pageable pageable);
}
