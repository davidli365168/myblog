package com.david.blog.web.admin;

import com.david.blog.entity.po.Category;
import com.david.blog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;

/**
 * @Description:
 * @Author lijiyang
 * @Date 2022/2/16 11:09
 */
@Controller
@RequestMapping("/admin")
public class CateogoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/categorys")
    public String list(@PageableDefault(size = 5, sort = {"id"}, direction = Sort.Direction.DESC)
                               Pageable pageable, Model model) {
        model.addAttribute("page", categoryService.listCategory(pageable));
        return "admin/categorys";
    }

    @GetMapping("/categorys/input")
    public String input(Model model) {
        model.addAttribute("category", new Category());
        return "admin/category-input";
    }

    @GetMapping("/categorys/{id}/input")
    public String editInput(@PathVariable Long id, Model model) {
        model.addAttribute("category", categoryService.getCategory(id));
        return "admin/category-input";
    }

    @PostMapping("/categorys")
    public String post(@Valid Category category, BindingResult result, RedirectAttributes attributes) {
        //名称不能重复
        List<Category> c = categoryService.getCategoryByName(category.getName());
        if (c.size() > 0) {
            result.rejectValue("name", "nameError", "category already exists");
        }
        if (result.hasErrors()) {
            return "admin/category-input";
        }
        Category saveCategory = categoryService.saveCategory(category);
        if (saveCategory == null) {
            attributes.addFlashAttribute("message", "add failed");
        }else {
            attributes.addFlashAttribute("message", "Success!");
        }
        return "redirect:/admin/categorys";
    }

    @PostMapping("/categorys/{id}")
    public String editPost(@Valid Category category, BindingResult result, RedirectAttributes attributes, @PathVariable Long id) {
        //名称不能重复
        List<Category> c = categoryService.getCategoryByName(category.getName());
        if (c.size() > 0) {
            result.rejectValue("name", "nameError", "category already exists");
        }
        if (result.hasErrors()) {
            return "admin/category-input";
        }
        Category saveCategory = categoryService.updateCategory(id,category);
        if (saveCategory == null) {
            attributes.addFlashAttribute("message", "update failed");
        }else {
            attributes.addFlashAttribute("message", "Success!");
        }
        return "redirect:/admin/categorys";
    }

    @GetMapping("/categorys/{id}/delete")
    public String deletePost(@PathVariable Long id, RedirectAttributes attributes) {
        categoryService.deleteCategory(id);
        attributes.addFlashAttribute("message", "Success!");
        return "redirect:/admin/categorys";
    }


}
