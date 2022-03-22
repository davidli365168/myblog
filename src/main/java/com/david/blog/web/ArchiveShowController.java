package com.david.blog.web;

import com.david.blog.entity.po.Blog;
import com.david.blog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class ArchiveShowController {

    @Autowired
    private BlogService blogService;

    @GetMapping("/archives")
    public String archives(Model model) {
        model.addAttribute("blogCount", blogService.countBlog());
        model.addAttribute("archiveMap", blogService.archiveBlog());
        return "archive";
    }
}
