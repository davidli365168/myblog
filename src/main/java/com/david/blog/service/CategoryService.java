package com.david.blog.service;

import com.david.blog.entity.po.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author LiJiYang
 * @date 2022/2/16 10:54
 */
public interface CategoryService {
    Category saveCategory(Category category);

    Category getCategory(Long id);

    Page<Category> listCategory(Pageable pageable);

    Category updateCategory(Long id, Category category);

    void deleteCategory(Long id);

    List<Category> getCategoryByName(String name);

    List<Category> listCategory();

    List<Category> listCategoryTop(Integer size);
}
