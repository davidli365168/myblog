package com.david.blog.entity.po;
import org.hibernate.validator.constraints.NotBlank;
import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @Description:
 * @Author lijiyang
 * @Date 2022/2/11 15:21
 */
@Entity
@Table(name = "t_category")
public class Category {
    @Id
    @GeneratedValue
    private Long id;
    @NotBlank(message = "cant be blank")
    private String name;
    @OneToMany(mappedBy = "category")
    private List<Blog> blogList = new ArrayList<>();

    public Category() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Blog> getBlogList() {
        return blogList;
    }

    public void setBlogList(List<Blog> blogList) {
        this.blogList = blogList;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", blogList=" + blogList +
                '}';
    }
}
