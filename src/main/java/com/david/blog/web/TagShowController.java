package com.david.blog.web;

import com.david.blog.entity.po.Tag;
import com.david.blog.service.BlogService;
import com.david.blog.service.TagService;
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
public class TagShowController {

    @Autowired
    private TagService tagService;

    @Autowired
    private BlogService blogService;

    @GetMapping("/tags/{id}")
    public String tags(@PageableDefault(size = 6, sort = {"updateTime"}, direction = Sort.Direction.DESC) Pageable pageable
            , Model model, @PathVariable Long id) {
        //数目够大就行
        List<Tag> tags = tagService.listTagTop(10000);
        if (id == -1) {
            //直接点过来没传id
            id = tags.get(0).getId();
        }
        model.addAttribute("tags", tags);
        model.addAttribute("page", blogService.listBlog(id, pageable));
        //回传当前点击的id
        model.addAttribute("activeTagId", id);
        return "tag";
    }
}
