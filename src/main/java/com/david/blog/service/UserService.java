package com.david.blog.service;

import com.david.blog.entity.po.User;

/**
 * @author LiJiYang
 * @date 2022/2/16 8:27
 */
public interface UserService {
    User checkUser(String username, String password);
}
