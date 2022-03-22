package com.david.blog.web;

import com.david.blog.entity.po.Category;
import com.david.blog.entity.vo.BlogQuery;
import com.david.blog.service.BlogService;
import com.david.blog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class CategoryShowController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private BlogService blogService;

    @GetMapping("/categorys/{id}")
    public String categorys(@PageableDefault(size = 6, sort = {"updateTime"}, direction = Sort.Direction.DESC) Pageable pageable
            , Model model, @PathVariable Long id) {
        //数目够大就行
        List<Category> categories = categoryService.listCategoryTop(10000);
        if (id == -1) {
            //直接点过来没传id
            id = categories.get(0).getId();
        }
        BlogQuery blogQuery = new BlogQuery();
        blogQuery.setCategoryId(id);
        model.addAttribute("categorys", categories);
        model.addAttribute("page", blogService.listBlog(pageable,blogQuery));
        //回传当前点击的id
        model.addAttribute("activeCategoryId", id);
        return "category";
    }
}
