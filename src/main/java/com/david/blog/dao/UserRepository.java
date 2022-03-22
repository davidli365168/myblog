package com.david.blog.dao;

import com.david.blog.entity.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @Description:
 * @Author lijiyang
 * @Date 2022/2/16 8:29
 */
public interface UserRepository extends JpaRepository<User,Long> {

    User findByUsernameAndPassword(String username, String password);
}
