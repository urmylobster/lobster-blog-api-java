package com.lobster.tobebraverman.service.impl;

import com.lobster.tobebraverman.dao.UserMapper;
import com.lobster.tobebraverman.entity.User;
import com.lobster.tobebraverman.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public User getUser(Integer id) {
        return userMapper.getUser(id);
    }

    @Override
    public List<User> getAll() {
        return userMapper.getAll();
    }

    @Override
    public User getUserByName(String name) {
        return userMapper.getUserByName(name);
    }

    @Override
    public User getUser(Integer id, String name) {
        return userMapper.getUserByIdAndName(id, name);
    }
}
