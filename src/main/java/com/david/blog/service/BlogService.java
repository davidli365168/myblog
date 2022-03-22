package com.david.blog.service;

import com.david.blog.entity.po.Blog;
import com.david.blog.entity.vo.BlogQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

/**
 * @author LiJiYang
 * @date 2022/2/16 17:53
 */
public interface BlogService {

    Blog getBlog(Long id);

    Page<Blog> listBlog(Pageable pageable, BlogQuery blog);

    Blog saveBlog(Blog blog);

    Blog updateBlog(Long id, Blog blog);

    void deleteBlog(Long id);

    Page<Blog> listBlog(Pageable pageable);

    Page<Blog> listBlog(String query, Pageable pageable);

    List<Blog> listRecommendBlogTop(Integer size);

    Blog getAndCovert(Long id);

    Page<Blog> listBlog(Long tagId, Pageable pageable);

    Map<String, List<Blog>> archiveBlog();

    Long countBlog();
}
