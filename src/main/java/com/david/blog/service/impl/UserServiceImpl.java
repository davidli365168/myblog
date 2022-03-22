package com.david.blog.service.impl;

import com.david.blog.dao.UserRepository;
import com.david.blog.entity.po.User;
import com.david.blog.service.UserService;
import com.david.blog.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description:
 * @Author lijiyang
 * @Date 2022/2/16 8:27
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User checkUser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, MD5Utils.code(password));
        return user;
    }
}
