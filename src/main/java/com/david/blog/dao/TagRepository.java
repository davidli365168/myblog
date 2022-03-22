package com.david.blog.dao;

import com.david.blog.entity.po.Tag;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author LiJiYang
 * @date 2022/2/16 17:58
 */
public interface TagRepository extends JpaRepository<Tag, Long> {
    List<Tag> findByName(String name);

    @Query("select t from Tag t")
    List<Tag> findTop(Pageable pageable);
}
