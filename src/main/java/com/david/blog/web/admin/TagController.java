package com.david.blog.web.admin;

import com.david.blog.entity.po.Category;
import com.david.blog.entity.po.Tag;
import com.david.blog.service.CategoryService;
import com.david.blog.service.TagService;
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
 * @Date 2022/2/16 17:09
 */
@Controller
@RequestMapping("/admin")
public class TagController {

    @Autowired
    private TagService tagService;

    @GetMapping("/tags")
    public String list(@PageableDefault(size = 5, sort = {"id"}, direction = Sort.Direction.DESC)
                               Pageable pageable, Model model) {
        model.addAttribute("page", tagService.listTag(pageable));
        return "admin/tags";
    }

    @GetMapping("/tags/input")
    public String input(Model model) {
        model.addAttribute("tag", new Tag());
        return "admin/tag-input";
    }

    @GetMapping("/tags/{id}/input")
    public String editInput(@PathVariable Long id, Model model) {
        model.addAttribute("tag", tagService.getTag(id));
        return "admin/tag-input";
    }

    @PostMapping("/tags")
    public String post(@Valid Tag tag, BindingResult result, RedirectAttributes attributes) {
        //名称不能重复
        List<Tag> c = tagService.getTagByName(tag.getName());
        if (c.size() > 0) {
            result.rejectValue("name", "nameError", "tag already exists");
        }
        if (result.hasErrors()) {
            return "admin/tag-input";
        }
        Tag saveTag = tagService.saveTag(tag);
        if (saveTag == null) {
            attributes.addFlashAttribute("message", "add failed");
        }else {
            attributes.addFlashAttribute("message", "Success!");
        }
        return "redirect:/admin/tags";
    }

    @PostMapping("/tags/{id}")
    public String editPost(@Valid Tag tag, BindingResult result, RedirectAttributes attributes, @PathVariable Long id) {
        //名称不能重复
        List<Tag> c = tagService.getTagByName(tag.getName());
        if (c.size() > 0) {
            result.rejectValue("name", "nameError", "tag already exists");
        }
        if (result.hasErrors()) {
            return "admin/tag-input";
        }
        Tag saveTag = tagService.updateTag(id,tag);
        if (saveTag == null) {
            attributes.addFlashAttribute("message", "update failed");
        }else {
            attributes.addFlashAttribute("message", "Success!");
        }
        return "redirect:/admin/tags";
    }

    @GetMapping("/tags/{id}/delete")
    public String deletePost(@PathVariable Long id, RedirectAttributes attributes) {
        tagService.deleteTag(id);
        attributes.addFlashAttribute("message", "Success!");
        return "redirect:/admin/tags";
    }


}
